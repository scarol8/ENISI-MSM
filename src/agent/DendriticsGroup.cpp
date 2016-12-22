#include "DendriticsGroup.h"
#include "agent/ENISIAgent.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"
#include <iostream>
#include <iomanip>

using namespace ENISI;

DendriticsGroup::DendriticsGroup(Compartment * pCompartment, const double & concentrations) :
		GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);

	for (size_t i = 0; i < LocalCount; i++){
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::Dendritics, DendriticState::IMMATURE));
	}

	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_idcmovele", p_idcmovele);
	pModel->getValue("p_idcmoveel", p_idcmoveel);
	pModel->getValue("p_idctdc", p_idctdc);
	pModel->getValue("p_idcedc", p_idcedc);
	pModel->getValue("p_idcedclp", p_idcedclp);
	pModel->getValue("p_idcrec", p_idcrec);
	pModel->getValue("p_dcmovelg", p_dcmovelg);
	pModel->getValue("p_dcmoveel", p_dcmoveel);
	pModel->getValue("p_tdccyto", p_tdccyto);
	pModel->getValue("p_edccyto", p_edccyto);
	pModel->getValue("p_dcdeath", p_dcdeath);

}

void DendriticsGroup::act(const repast::Point<int> & pt)
{
	std::vector< double > Location(2, 0);

	std::vector< Agent * > Dendritics;
	mpCompartment->getAgents(pt, Agent::Dendritics, Dendritics);

	std::vector< Agent * > BacteriaPs;
	std::vector< Agent * > BacteriaDAs;
	std::vector< Agent * > Tcells;
	std::vector< Agent * > EpithelialCells;

	if (mpCompartment->getType() == Compartment::epithilium)
	{
		mpCompartment->getAgents(pt, Agent::EpithelialCell, EpithelialCells);

		if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
		{
			mpCompartment->getAgents(pt, 0, 1, Agent::BacteriaP, BacteriaPs);
			mpCompartment->getAgents(pt, 0, 1, Agent::BacteriaDA, BacteriaDAs);
			mpCompartment->getAgents(pt, 0, 1, Agent::Tcell, Tcells);
		}

		if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
		{
			mpCompartment->getAgents(pt, 0, -1, Agent::BacteriaP, BacteriaPs);
			mpCompartment->getAgents(pt, 0, -1, Agent::BacteriaDA, BacteriaDAs);
		}
	}
	if (mpCompartment->getType() == Compartment::lamina_propria)
	{
		mpCompartment->getAgents(pt, Agent::BacteriaDA, BacteriaDAs);
		mpCompartment->getAgents(pt, Agent::Tcell, Tcells);
	}
	if (mpCompartment->getType() == Compartment::gastric_lymph_node)
	{
		mpCompartment->getAgents(pt, Agent::Tcell, Tcells);
	}

	Concentration DendriticsConcentration;
	concentrations(Agent::Dendritics, Dendritics, DendriticsConcentration);
	Concentration BacteriaPConcentration;
	concentrations(Agent::BacteriaP, BacteriaPs, BacteriaPConcentration);
	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);
	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);
	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	double faecaliConcentration = BacteriaPConcentration[BacteriaPState::FAECALI];
	double parabacConcentration = BacteriaPConcentration[BacteriaPState::PARABAC];
	double sboulConcentration = BacteriaPConcentration[BacteriaPState::SBOUL];
	double dabacConcentration = BacteriaDAConcentration[BacteriaDAState::MYCO] + BacteriaDAConcentration[BacteriaDAState::ECOLI] + BacteriaDAConcentration[BacteriaDAState::KLEB] + BacteriaDAConcentration[BacteriaDAState::ENTERO] + BacteriaDAConcentration[BacteriaDAState::CORIO];
	double epidamConcentration = EpithelialCellConcentration[EpithelialCellState::DAMAGED];
	double epiinfConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];
	double epihealConcentration = EpithelialCellConcentration[EpithelialCellState::HEALTHY];
	double edcConcentration = DendriticsConcentration[DendriticState::EFFECTOR];
	double itregConcentration = TcellConcentration[TcellState::iTREG];

	std::vector< Agent * >::iterator it = Dendritics.begin();
	std::vector< Agent * >::iterator end = Dendritics.end();

	for (; it != end; ++it){
		Agent * pAgent = *it;
		DendriticState::State state = (DendriticState::State) pAgent->getState();

		if (state == DendriticState::DEAD) continue;

		DendriticState::State newState = state;

		if (state == DendriticState::IMMATURE)
		{
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW)) < 0.5
					&& mpCompartment->getType() == Compartment::lamina_propria
					&& (p_idcmovele > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] -= 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::LOW);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH)) < 1.5 //TODO - CRITICAL Determine this value
					&& mpCompartment->getType() == Compartment::epithilium
					&& (p_idcmoveel > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] += 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if (mpCompartment->getType() == Compartment::epithilium
					&& (faecaliConcentration > ENISI::Threshold || parabacConcentration > ENISI::Threshold)
					&& p_idctdc > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = DendriticState::TOLEROGENIC;
				pAgent->setState(newState);
				continue;
			}
			if (mpCompartment->getType() == Compartment::epithilium
					&& dabacConcentration > ENISI::Threshold
					&& p_idcedc > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = DendriticState::EFFECTOR;
				pAgent->setState(newState);
				continue;
			}
			if (mpCompartment->getType() == Compartment::lamina_propria
					&& dabacConcentration > ENISI::Threshold
					&& p_idcedclp > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = DendriticState::EFFECTOR;
				pAgent->setState(newState);
				continue;
			}
			if ((epidamConcentration > ENISI::Threshold || epiinfConcentration > ENISI::Threshold)
					&& (p_idcrec > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Dendritics, pAgent->getState()), Location);
			}
		}
		if (state == DendriticState::EFFECTOR)
		{
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
					&& (mpCompartment->getType() == Compartment::lamina_propria)
					&& p_dcmovelg > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] += 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH)) < 1.5 //TODO - CRITICAL Determine this value
					&& mpCompartment->getType() == Compartment::epithilium
					&& (p_dcmoveel > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] += 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if (p_edccyto > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next() && (mpCompartment->getType() == Compartment::lamina_propria || mpCompartment->getType() == Compartment::gastric_lymph_node))
			{
				mpCompartment->cytokineValue("eIL6", pt) += 7;
				mpCompartment->cytokineValue("eIL12",pt) += 7;
			}
			if ((p_dcdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
		}
		if (state == DendriticState::TOLEROGENIC)
		{
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
					&& (mpCompartment->getType() == Compartment::lamina_propria)
					&& p_dcmovelg > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] += 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if ((mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH)) < 1.5 //TODO - CRITICAL Determine this value
					&& mpCompartment->getType() == Compartment::epithilium
					&& (p_dcmoveel > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				std::vector< double > Location;
				mpCompartment->getLocation(pAgent->getId(), Location);
				Location[Borders::Y] += 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH);
				mpCompartment->moveTo(pAgent->getId(), Location);
				continue;
			}
			if (p_tdccyto > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next() && (mpCompartment->getType() == Compartment::lamina_propria || mpCompartment->getType() == Compartment::gastric_lymph_node))
			{
				mpCompartment->cytokineValue("eTGFb", pt) += 7;
			}
			if ((p_dcdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
		}
	}
}

// virtual
void DendriticsGroup::move()
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
void DendriticsGroup::write(const repast::Point<int> &)
{

}
