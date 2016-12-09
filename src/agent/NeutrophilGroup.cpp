#include "NeutrophilGroup.h"
#include "agent/ENISIAgent.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"
#include <iostream>
#include <iomanip>

using namespace ENISI;

NeutrophilGroup::NeutrophilGroup(Compartment * pCompartment, const double & concentrations) :
										  GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);

	for (size_t i = 0; i < LocalCount; i++){
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::Neutrophil, NeutrophilState::BASE));
	}

	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_nrecmac", p_nrecmac);
	pModel->getValue("p_nrecei", p_nrecei);
	pModel->getValue("p_nreced", p_nreced);
	pModel->getValue("p_nbactact", p_nbactact);
	pModel->getValue("p_nepiact", p_nepiact);
	pModel->getValue("p_nbasedeath", p_nbasedeath);
	pModel->getValue("p_nskipecoli", p_nskipecoli);
	pModel->getValue("p_nkillbac", p_nkillbac);
	pModel->getValue("p_nactdeath", p_nactdeath);
	pModel->getValue("p_th1max", p_th1max);

}

void NeutrophilGroup::act(const repast::Point<int> & pt)
{
	std::vector< double > Location(2, 0);

	std::vector< Agent * > Neutrophils;
	mpCompartment->getAgents(pt, Agent::Neutrophil, Neutrophils);

	std::vector< Agent * > BacteriaDAs;
	std::vector< Agent * > Tcells;
	std::vector< Agent * > EpithelialCells;
	std::vector< Agent * > Macrophages;

	if (mpCompartment->getType() == Compartment::lamina_propria)
	{
		mpCompartment->getAgents(pt, Agent::BacteriaDA, BacteriaDAs);
		mpCompartment->getAgents(pt, Agent::Macrophage, Macrophages);
		mpCompartment->getAgents(pt, Agent::Tcell, Tcells);
	}
	if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
	{
		mpCompartment->getAgents(pt, 0, -1, Agent::EpithelialCell, EpithelialCells);
	}

	Concentration NeutrophilConcentration;
	concentrations(Agent::Neutrophil, Neutrophils, NeutrophilConcentration);
	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);
	Concentration MacrophageConcentration;
	concentrations(Agent::Macrophage, Macrophages, MacrophageConcentration);
	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);
	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	double bacteriaDAConcentration = BacteriaDAConcentration;
	double ecoliConcentration = BacteriaDAConcentration[BacteriaDAState::ECOLI];
	double infmacConcentration = MacrophageConcentration[MacrophageState::INFLAMMATORY];
	double th1Concentration = TcellConcentration[TcellState::TH1];
	double damagedEpithelialCellConcentration = EpithelialCellConcentration[EpithelialCellState::DAMAGED];
	double inflamedEpithelialCellConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];

	std::vector< Agent * >::iterator it = Neutrophil.begin();
	std::vector< Agent * >::iterator end = Neutrophil.end();

	for (; it != end; ++it)
	{
		Agent * pAgent = *it;
		NeutrophilState::State state = (NeutrophilState::State) pAgent->getState();

		if (state == NeutrophilState::DEAD) continue;

		NeutrophilState::State newState = state;

		if (state == NeutrophilState::BASE)
		{
			// neutrophils recruited by macrophages
			if (infmacConcentration > ENISI::Threshold
					&& p_nrecmac > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Neutrophil, pAgent->getState()), Location);
			}
			// neutrophils recruited by damaged epithelial cells
			if (inflamedEpithelialCellConcentration > ENISI::Threshold
					&& p_nrecei > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Neutrophil, pAgent->getState()), Location);
			}
			// neutrophils recruited by damaged epithelial cells
			if (damagedEpithelialCellConcentration > ENISI::Threshold
					&& p_nreced > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Neutrophil, pAgent->getState()), Location);
			}
			// neutrophils activated by bacteria
			if (bacteriaDAConcentration > ENISI::Threshold
					&& p_nbactact > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				newstate = Neutrophil::State = ACTIVATED;
				pAgent->setState(newState);
			}
			// neutrophils activated by epithelial cells
			if (inflamedEpithelialCellConcentration > ENISI::Threshold
					&& p_nepiact > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				newstate = Neutrophil::State = ACTIVATED;
				pAgent->setState(newState);
			}
			// neutrophils die
			if (p_nbasedeath > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
			}
		}

		if (state == NeutrophilState::ACTIVATED)
		{
			// activated neutrophil efficacy is diminished by ecoli
			if (ecoliConcentration > ENISI::Threshold
					&& p_nskipecoli > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				continue;
			}
			// activated neutrophils kill bacteria and secrete cytokines
			else if (bacteriaDAConcentration > ENISI::Threshold
					&& p_nkillbac > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				mpCompartment->cytokineValue("eIL17", pt) += 1;
				mpCompartment->removeAgent(BacteriaDA[BacteriaDA.size() - 1]);
				BacteriaDA.pop_back();
			}
			// activated neutrophils die
			if (p_nactdeath - (th1Concentration / p_th1max) > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
			}
		}
	}
}

// virtual
void NeutrophilGroup::move()
{
	// TODO CRITICAL Determine the maximum speed
	double MaxSpeed = 4.0;

	// Find all local agents and move them
	Compartment::LocalIterator itLocal = mpCompartment->localBegin();
	Compartment::LocalIterator endLocal = mpCompartment->localEnd();

	for (; itLocal != endLocal; ++itLocal)
	{
		mpCompartment->moveRandom((*itLocal)->getId(), MaxSpeed);
	}
}

// virtual
void NeutrophilGroup::write(const repast::Point<int> &)
{

}