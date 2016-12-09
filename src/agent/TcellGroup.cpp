#include "TcellGroup.h"
#include "agent/ENISIAgent.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"
#include "agent/TcellODE.h"
#include "grid/Borders.h"

using namespace ENISI;

TcellGroup::TcellGroup(Compartment * pCompartment, const double & concentrations) :
																										  GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);

	for (size_t i = 0; i < LocalCount; i++)
	{
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::Tcell, TcellState::NAIVE));
	}
	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_alltrep", p_alltrep);
	pModel->getValue("p_th1diff", p_th1diff);
	pModel->getValue("p_th17diff", p_th17diff);
	pModel->getValue("p_tregdiff", p_tregdiff);
	pModel->getValue("p_IL10", p_IL10);
	pModel->getValue("p_IL17", p_IL17);
	pModel->getValue("p_IFNg", p_IFNg);
	pModel->getValue("p_ntdeath", p_ntdeath);
	pModel->getValue("p_th17treg", p_th17treg);
	pModel->getValue("p_tregth17", p_tregth17);
	pModel->getValue("p_th17cyto", p_th17cyto);
	pModel->getValue("p_tregcyto", p_tregcyto);
	pModel->getValue("p_th1cyto", p_th1cyto);
	pModel->getValue("p_tcelltrans", p_tcelltrans);
	pModel->getValue("p_th17death", p_th17death);
	pModel->getValue("p_tregdeath", p_tregdeath);
	pModel->getValue("p_th1death", p_th1death);
	pModel->getValue("p_th17rep", p_th17rep);
	pModel->getValue("p_tregrep", p_tregrep);
	pModel->getValue("p_th1rep", p_th1rep);
}

void TcellGroup::act(const repast::Point<int> & pt)
{
	std::vector< double > Location(2, 0.0);

	std::vector< Agent * > Tcells;
	mpCompartment->getAgents(pt, Agent::Tcell, Tcells);

	std::vector< Agent * > Macrophages;
	mpCompartment->getAgents(pt, Agent::Macrophage, Macrophages);

	std::vector< Agent * > Dendritics;
	mpCompartment->getAgents(pt, Agent::Dendritics, Dendritics);

	std::vector< Agent * > EpithelialCells;

	if (mpCompartment->getType() == Compartment::lamina_propria)
	{
		if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
		{
			mpCompartment->getAgents(pt, 0, -1, Agent::EpithelialCell, EpithelialCells);
		}
	}

	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);
	Concentration MacrophageConcentration;
	concentrations(Agent::Macrophage, Macrophages, MacrophageConcentration);
	Concentration DendriticsConcentration;
	concentrations(Agent::Dendritics, Dendritics, DendriticsConcentration);
	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);


	double IL6_pool  = mpCompartment->cytokineValue("eIL6", pt);
	double TGFb_pool = mpCompartment->cytokineValue("eTGFb", pt);
	double IL12_pool = mpCompartment->cytokineValue("eIL12", pt);

	TcellODE & odeModel = TcellODE::getInstance();

	odeModel.setInitialConcentration("IL6_pool", IL6_pool);
	odeModel.setInitialConcentration("TGFb_pool", TGFb_pool);
	odeModel.setInitialConcentration("IL12_pool", IL12_pool);

	/* run time course */
	if (!odeModel.runTimeCourse())
	{
		LocalFile::debug() << pt << std::endl;
	}
	double dIFNg = odeModel.getConcentration("dIFNg");
	double dIL17 = odeModel.getConcentration("dIL17");
	double dIL10 = odeModel.getConcentration("dIL10");

	double trmacConcentration = MacrophageConcentration[MacrophageState::RESIDENT];
	double infmacConcentration = MacrophageConcentration[MacrophageState::INFLAMATORY];
	double intmacConcentration = MacrophageConcentration[MacrophageState::INTERMEDIATE];
	double naiveTConcentration = TcellConcentration[TcellState::NAIVE];
	double th17Concentration = TcellConcentration[TcellState::TH17];
	double tregConcentration = TcellConcentration[TcellState::iTREG];
	double th1Concentration = TcellConcentration[TcellState::TH1];
	double eDCConcentration = DentriticsConcentration[DendriticState::EFFECTOR];
	double tDCConcentration = DentriticsConcentration[DendriticState::TOLEROGENIC];
	double epiinfConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];

	double IFNg = mpCompartment->cytokineValue("eIFNg", pt);
	double IL10 = mpCompartment->cytokineValue("eIL10", pt);
	double TGFb = mpCompartment->cytokineValue("eTGFb", pt);
	double IL17 = mpCompartment->cytokineValue("eIL17", pt);
	double IL6 = mpCompartment->cytokineValue("eIL6", pt);
	double IL12 = mpCompartment->cytokineValue("eIL12", pt);

	std::vector< Agent * >::iterator it = Tcells.begin();
	std::vector< Agent * >::iterator end = Tcells.end();

	for (; it != end; ++it)
	{
		Agent * pAgent = *it;
		TcellState::State state = (TcellState::State) pAgent->getState();

		if (state == TcellState::DEAD) continue;

		TcellState::State newState = state;

		if (mpCompartment->getType() == Compartment::gastric_lymph_node)
		{
			if (p_alltrep / naiveTConcentration > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Tcell, pAgent->getState()), Location);
				continue;
			}
			if(state == TcellState::NAIVE)
			{
				if (eDCConcentration  > ENISI::Threshold)
				{
					if (dIFNg > p_IFNg
							|| p_th1diff > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
					{
						newState = TcellState::TH1;
						pAgent->setState(newState);
					}
					if (p_th17diff > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
							|| (dIL17 > p_IL17))
					{
						newState = TcellState::TH17;
						pAgent->setState(newState);
					}
				}
				if (tDCConcentration > ENISI::Threshold)
				{
					if (dIL10 > p_IL10
							|| (p_tregdiff > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
					{
						newState = TcellState::iTREG;
						pAgent->setState(newState);
					}
				}
				if (p_ntdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::TH17)
			{
				if  ((tDCConcentration > ENISI::Threshold)
						&& (p_th17treg > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					newState = TcellState::iTREG;
					pAgent->setState(newState);
				}
				if (p_th17cyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIL17", pt) += 5;
				}
				if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5
						&& (p_tcelltrans > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))/*Rule 32*/
				{
					std::vector<double> Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] -= 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::LOW);
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				if (p_th17death > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::iTREG)
			{
				if  ((eDCConcentration > ENISI::Threshold)
						&& (p_tregth17 > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					newState = TcellState::TH17;
					pAgent->setState(newState);
				}
				if (p_tregcyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIL10", pt) += 5;
				}
				if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5
						&& (p_tcelltrans > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))/*Rule 32*/
				{
					std::vector<double> Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] -= 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::LOW);
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				if (p_tregdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::TH1)
			{
				if (p_th1cyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIFNg", pt) += 5;
				}
				if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5
						&& (p_tcelltrans > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))/*Rule 32*/
				{
					std::vector<double> Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] -= 1.01 * mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::LOW);
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				if (p_th1death > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
		}
		if (mpCompartment->getType() == Compartment::lamina_propria)
		{
			if (state == TcellState::NAIVE)
			{
				if (p_ntdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::iTREG)
			{
				if ((trmacConcentration > ENISI::Threshold || tDCConcentration > ENISI::Threshold)
						&& p_tregrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::Tcell, pAgent->getState()), Location);
					continue;
				}
				if (eDCConcentration > ENISI::Threshold || ((IL17 + IL6) > (TGFb + IL10))
						&& (p_tregth17 > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					newState = TcellState::TH17;
					pAgent->setState(newState);
				}
				if (p_tregcyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIL10", pt) += 5;
				}
				if (p_tregdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::TH17)
			{
				if ((intmacConcentration > ENISI::Threshold || eDCConcentration > ENISI::Threshold || epiinfConcentration > ENISI::Threshold)
						&& p_th17rep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::Tcell, pAgent->getState()), Location);
					continue;
				}
				if (tDCConcentration > ENISI::Threshold || ((IL17 + IL6) < (TGFb + IL10))
						&& (p_th17treg > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					newState = TcellState::iTREG;
					pAgent->setState(newState);
				}
				if (p_th17cyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIL17", pt) += 5;
				}
				if (p_th17death > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
			if (state == TcellState::TH1)
			{
				if ((infmacConcentration > ENISI::Threshold || eDCConcentration > ENISI::Threshold || epiinfConcentration > ENISI::Threshold)
						&& p_th1rep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::Tcell, pAgent->getState()), Location);
					continue;
				}
				if (p_th1cyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->cytokineValue("eIFNg", pt) += 5;
				}
				if (p_th1death > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
		}
	}
}

// virtual
void TcellGroup::move()
{
	// TODO CRITICAL Determine the maximum speed
	double MaxSpeed = 8.0;

	// Find all local agents and move them
	Compartment::LocalIterator itLocal = mpCompartment->localBegin();
	Compartment::LocalIterator endLocal = mpCompartment->localEnd();

	for (; itLocal != endLocal; ++itLocal)
	{
		mpCompartment->moveRandom((*itLocal)->getId(), MaxSpeed);
	}
}

// virtual
void TcellGroup::write(const repast::Point<int> & pt)
{
	std::ostream & o = LocalFile::instance(mpCompartment->getName())->stream();
	std::vector< Agent * > Tcells;
	mpCompartment->getAgents(pt, Agent::Tcell, Tcells);
	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);

	Concentration::const_iterator it = TcellConcentration.begin();
	Concentration::const_iterator end = TcellConcentration.end();

	for (int i = 0; it != end; ++it, ++i)
	{
		if (i) o << ", ";

		o << "[" << i << "] = " << *it;
	}
}
