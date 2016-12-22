#include "EpithelialCellGroup.h"
#include "grid/Borders.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"

using namespace ENISI;

EpithelialCellGroup::EpithelialCellGroup(Compartment * pCompartment, const double & concentrations):
																														  GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);

	for (size_t i = 0; i < LocalCount; i++)
	{
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::EpithelialCell, EpithelialCellState::HEALTHY));
	}

	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_epiecolidam", p_epiecolidam);
	pModel->getValue("p_epibifidoprot", p_epibifidoprot);
	pModel->getValue("p_epilactoprot", p_epilactoprot);
	pModel->getValue("p_epimycodam", p_epimycodam);
	pModel->getValue("p_epineutdam", p_epineutdam);
	pModel->getValue("p_epimacdam", p_epimacdam);
	pModel->getValue("p_epith1inf", p_epith1inf);
	pModel->getValue("p_epith17inf", p_epith17inf);
	pModel->getValue("p_epidaminf", p_epidaminf);
	pModel->getValue("p_epirep", p_epirep);
	pModel->getValue("p_epideath", p_epideath);
	pModel->getValue("p_epiiecolidam", p_epiiecolidam);
	pModel->getValue("p_epiimycodam", p_epiimycodam);
	pModel->getValue("p_epiineutdam", p_epiineutdam);
	pModel->getValue("p_epiimacdam", p_epiimacdam);
	pModel->getValue("p_epiil10", p_epiil10);
	pModel->getValue("p_epiitrheal", p_epiitrheal);
	pModel->getValue("p_epicyto", p_epicyto);
	pModel->getValue("p_epiideath", p_epiideath);
	pModel->getValue("p_epidneutdam", p_epidneutdam);
	pModel->getValue("p_epidmacdam", p_epidmacdam);
	pModel->getValue("p_epidtrheal", p_epidtrheal);
	pModel->getValue("p_epiddeath", p_epiddeath);
	pModel->getValue("p_epidremove", p_epidremove);
	pModel->getValue("p_epidead", p_epidead);
	}

void EpithelialCellGroup::act(const repast::Point<int> & pt)
{
	std::vector<double> Location(2, 0.0);

	std::vector< Agent * > EpithelialCells;
	mpCompartment->getAgents(pt, Agent::EpithelialCell, EpithelialCells);

	std::vector< Agent * > BacteriaDAs;
	std::vector< Agent * > BacteriaPs;
	std::vector< Agent * > Tcells;
	std::vector< Agent * > Neutrophils;
	std::vector< Agent * > Macrophages;

	double IL10 = 0.0;

	if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
	{
		mpCompartment->getAgents(pt, 0, 1, Agent::Neutrophil, Neutrophils);
		mpCompartment->getAgents(pt, 0, 1, Agent::Macrophage, Macrophages);
		mpCompartment->getAgents(pt, 0, 1, Agent::Tcell, Tcells);
		IL10 = mpCompartment->cytokineValue("eIL10", pt, 0, 1);
	}

	if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
	{
		mpCompartment->getAgents(pt, 0, -1, Agent::BacteriaDA, BacteriaDAs);
		mpCompartment->getAgents(pt, 0, -1, Agent::BacteriaP, BacteriaPs);
	}

	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);
	Concentration BacteriaPConcentration;
	concentrations(Agent::BacteriaP, BacteriaPs, BacteriaPConcentration);
	Concentration TCellConcentration;
	concentrations(Agent::Tcell, Tcells, TCellConcentration);
	Concentration MacrophageConcentration;
	concentrations(Agent::Macrophage, Macrophages, MacrophageConcentration);
	Concentration NeutrophilConcentration;
	concentrations(Agent::Neutrophil, Neutrophils, NeutrophilConcentration);
	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	double ecoliConcentration = BacteriaDAConcentration[BacteriaDAState::ECOLI];
	double mycoConcentration = BacteriaDAConcentration[BacteriaDAState::MYCO];
	double bifidoConcentration = BacteriaPConcentration[BacteriaPState::BIFIDO];
	double lactoConcentration = BacteriaPConcentration[BacteriaPState::LACTO];
	double trmacConcentration = MacrophageConcentration[MacrophageState::RESIDENT];
	double infmacConcentration = MacrophageConcentration[MacrophageState::INFLAMMATORY];
	double intmacConcentration = MacrophageConcentration[MacrophageState::INTERMEDIATE];
	double actneutConcentration = NeutrophilConcentration[NeutrophilState::ACTIVATED];
	double th1Concentration = TCellConcentration[TcellState::TH1];
	double th17Concentration = TCellConcentration[TcellState::TH17];
	double edConcentration = EpithelialCellConcentration[EpithelialCellState::DAMAGED];

	std::vector< Agent * >::iterator it = EpithelialCells.begin();
	std::vector< Agent * >::iterator end = EpithelialCells.end();

	for (; it != end; ++it)
	{
		Agent * pAgent = *it;
		EpithelialCellState::State state = (EpithelialCellState::State) pAgent->getState();
		EpithelialCellState::State newState = state;

		if (state == EpithelialCellState::HEALTHY)
		{
			if (ecoliConcentration > ENISI::Threshold
					&& p_epiecolidam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				if (bifidoConcentration > ENISI::Threshold
						&& p_epibifidoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::HEALTHY;
					pAgent->setState(newState);
				}
				else if (lactoConcentration > ENISI::Threshold
						&& p_epilactoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::HEALTHY;
					pAgent->setState(newState);
				}
				else
				{
					newState = EpithelialCellState::DAMAGED;
					pAgent->setState(newState);
				}
			}
			if (mycoConcentration > ENISI::Threshold
					&& p_epimycodam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				if (bifidoConcentration > ENISI::Threshold
						&& p_epibifidoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::HEALTHY;
					pAgent->setState(newState);
				}
				else if (lactoConcentration > ENISI::Threshold
						&& p_epilactoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::HEALTHY;
					pAgent->setState(newState);
				}
				else
				{
					newState = EpithelialCellState::DAMAGED;
					pAgent->setState(newState);
				}
			}
			if (actneutConcentration > ENISI::Threshold
					&& p_epineutdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DAMAGED;
				pAgent->setState(newState);
			}
			if (infmacConcentration > ENISI::Threshold
					&& p_epimacdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DAMAGED;
				pAgent->setState(newState);
			}
			if (th1Concentration > ENISI::Threshold
					&& p_epith1inf > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::INFLAMED;
				pAgent->setState(newState);
			}
			if (th17Concentration > ENISI::Threshold
					&& p_epith17inf > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::INFLAMED;
				pAgent->setState(newState);
			}
			if (edConcentration > ENISI::Threshold
					&& p_epidaminf > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::INFLAMED;
				pAgent->setState(newState);
			}
			if (p_epirep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::EpithelialCell, EpithelialCellState::HEALTHY), Location);
			}

			if (p_epideath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
		}
		if (state == EpithelialCellState::INFLAMED)
		{
			if (ecoliConcentration > ENISI::Threshold
					&& p_epiiecolidam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				if (bifidoConcentration > ENISI::Threshold
						&& p_epibifidoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::INFLAMED;
					pAgent->setState(newState);
				}
				else if (lactoConcentration > ENISI::Threshold
						&& p_epilactoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::INFLAMED;
					pAgent->setState(newState);
				}
				else
				{
					newState = EpithelialCellState::DAMAGED;
					pAgent->setState(newState);
				}
			}
			if (mycoConcentration > ENISI::Threshold
					&& p_epiimycodam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				if (bifidoConcentration > ENISI::Threshold
						&& p_epibifidoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::INFLAMED;
					pAgent->setState(newState);
				}
				else if (lactoConcentration > ENISI::Threshold
						&& p_epilactoprot > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					newState = EpithelialCellState::INFLAMED;
					pAgent->setState(newState);
				}
				else
				{
					newState = EpithelialCellState::DAMAGED;
					pAgent->setState(newState);
				}
			}
			if (actneutConcentration > ENISI::Threshold
					&& p_epiineutdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DEAD;
				pAgent->setState(newState);
			}
			if (infmacConcentration > ENISI::Threshold
					&& p_epiimacdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DAMAGED;
				pAgent->setState(newState);
			}
			if (IL10 > ENISI::Threshold
					&& p_epiil10 > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::HEALTHY;
				pAgent->setState(newState);
			}
			if (trmacConcentration > ENISI::Threshold
					&& p_epiitrheal > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::HEALTHY;
				pAgent->setState(newState);
			}
			if (p_epicyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				int yOffset = mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH);
				mpCompartment->cytokineValue("eIL6", pt, 0, yOffset) += 7;
				mpCompartment->cytokineValue("eIL12", pt, 0, yOffset) += 7;
			}
			if (p_epiideath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DEAD;
				pAgent->setState(newState);
			}
		}
		if (state == EpithelialCellState::DAMAGED)
		{
			if (actneutConcentration > ENISI::Threshold
					&& p_epidneutdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DEAD;
				pAgent->setState(newState);
			}
			if (infmacConcentration > ENISI::Threshold
					&& p_epidmacdam > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DEAD;
				pAgent->setState(newState);
			}
			if (trmacConcentration > ENISI::Threshold
					&& p_epidtrheal > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::HEALTHY;
				pAgent->setState(newState);
			}
			if (p_epicyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				int yOffset = mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH);
				mpCompartment->cytokineValue("eIL17", pt, 0, yOffset) += 7;
				mpCompartment->cytokineValue("eIFNg", pt, 0, yOffset) += 7;
			}
			if (p_epiddeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = EpithelialCellState::DEAD;
				pAgent->setState(newState);
			}
		}
		if (state == EpithelialCellState::DEAD)
		{
			if (intmacConcentration > ENISI::Threshold
					&& p_epidremove > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
			if (p_epidead > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
		}
	}
}

// virtual
void EpithelialCellGroup::move(){
	// TODO CRITICAL Determine the maximum speed
	double MaxSpeed = 0.1;

	// Find all local agents and move them
	Compartment::LocalIterator itLocal = mpCompartment->localBegin();
	Compartment::LocalIterator endLocal = mpCompartment->localEnd();

	for (; itLocal != endLocal; ++itLocal){
		mpCompartment->moveRandom((*itLocal)->getId(), MaxSpeed);
	}
}
// virtual
void EpithelialCellGroup::write(const repast::Point<int> &)
{

}
