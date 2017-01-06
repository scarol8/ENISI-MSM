#include "agent/MacrophageGroup.h"
#include "agent/ENISIAgent.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "agent/MacrophageODE1.h"
#include "DataWriter/LocalFile.h"

using namespace ENISI;

MacrophageGroup::MacrophageGroup(Compartment * pCompartment,
		const double & monocyteConcentration,
		const double & regulatoryConcentration):
		GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(monocyteConcentration);

	for (size_t i = 0; i < LocalCount; i++)
	{
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::Macrophage, MacrophageState::MONOCYTE));
	}

	LocalCount = mpCompartment->localCount(regulatoryConcentration);

	for (size_t i = 0; i < LocalCount; i++)
	{
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::Macrophage, MacrophageState::RESIDENT));
	}

	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_trmaccyto", p_trmaccyto);
	pModel->getValue("p_trmacrep", p_trmacrep);
	pModel->getValue("p_trmackill", p_trmackill);
	pModel->getValue("p_trmacdeath", p_trmacdeath);
	pModel->getValue("p_monorec", p_monorec);
	pModel->getValue("p_monoint", p_monoint);
	pModel->getValue("p_monoint2", p_monoint2);
	pModel->getValue("p_monoinf", p_monoinf);
	pModel->getValue("p_monodeath", p_monodeath);
	pModel->getValue("p_infmaccyto", p_infmaccyto);
	pModel->getValue("p_intmaccyto", p_intmaccyto);
	pModel->getValue("p_monobaserec", p_monobaserec);
	pModel->getValue("p_Mbasal", p_Mbasal);		
}

MacrophageGroup::~MacrophageGroup()
{}

void MacrophageGroup::act(const repast::Point<int> & pt)
{
	std::vector< double > Location(2, 0);

	std::vector< Agent * > Macrophages;
	mpCompartment->getAgents(pt, Agent::Macrophage, Macrophages);

	std::vector< Agent * > BacteriaDAs;
	mpCompartment->getAgents(pt, Agent::BacteriaDA, BacteriaDAs);

	std::vector< Agent * > Tcells;
	mpCompartment->getAgents(pt, Agent::Tcell, Tcells);

	std::vector< Agent * > EpithelialCells;

	if (mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
	{
		mpCompartment->getAgents(pt, 0, -1, Agent::EpithelialCell, EpithelialCells);
	}

	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	Concentration MacrophageConcentration;
	concentrations(Agent::Macrophage, Macrophages, MacrophageConcentration);

	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);

	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);

	double th1Concentration = TcellConcentration[TcellState::TH1];
	double th17Concentration = TcellConcentration[TcellState::TH17];
	double tregConcentration = TcellConcentration[TcellState::iTREG];
	double epidamConcentration = EpithelialCellConcentration[EpithelialCellState::DAMAGED];
	double epihealConcentration = EpithelialCellConcentration[EpithelialCellState::HEALTHY];
	double epiinfConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];
	double trmacConcentration = MacrophageConcentration[MacrophageState::RESIDENT];
	double infmacConcentration = MacrophageConcentration[MacrophageState::INFLAMMATORY];
	double intmacConcentration = MacrophageConcentration[MacrophageState::INTERMEDIATE];
	double monosConcentration = MacrophageConcentration[MacrophageState::MONOCYTE] + MacrophageConcentration[MacrophageState::INFLAMMATORY] + MacrophageConcentration[MacrophageState::INTERMEDIATE];
	double bacConcentration = BacteriaDAConcentration[BacteriaDAState::MYCO] + BacteriaDAConcentration[BacteriaDAState::ECOLI] + BacteriaDAConcentration[BacteriaDAState::KLEB];
	double mycoConcentration = BacteriaDAConcentration[BacteriaDAState::MYCO];

	double IFNg = mpCompartment->cytokineValue("eIFNg", pt);
	double IL10 = mpCompartment->cytokineValue("eIL10", pt);
	double TGFb = mpCompartment->cytokineValue("eTGFb", pt);

	MacrophageODE1 & odeModel = MacrophageODE1::getInstance();
	odeModel.setInitialConcentration("IFNg", IFNg);
	odeModel.setInitialConcentration("IL10", IL10);

	/* run time course */
	odeModel.runTimeCourse();

	double Mreg = odeModel.getConcentration("Mreg");

	std::vector< Agent * >::iterator it = Macrophages.begin();
	std::vector< Agent * >::iterator end = Macrophages.end();

	for (; it != end; ++it){
		Agent * pAgent = *it;
		MacrophageState::State state = (MacrophageState::State) pAgent->getState();
		MacrophageState::State newState = state;
		
		if (state == MacrophageState::RESIDENT)
		{
			if (p_trmaccyto > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->cytokineValue("eIL10", pt) += 5;
				mpCompartment->cytokineValue("eTGFb", pt) += 2;
			}
			if ((epihealConcentration > ENISI::Threshold || trmacConcentration > ENISI::Threshold)
					&& p_trmacrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, pAgent->getState()), Location);
			}
			if ((th1Concentration > ENISI::Threshold || th17Concentration > ENISI::Threshold)
					&& (p_trmackill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
			if (p_trmacdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
				continue;
			}
		}
		if (state == MacrophageState::MONOCYTE)
		{
			if ((epiinfConcentration > ENISI::Threshold || epidamConcentration > ENISI::Threshold)
					&& p_monorec > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, pAgent->getState()), Location);
			}
			if ((Mreg / p_monoint) > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next()
					|| (tregConcentration / p_monoint2) > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = MacrophageState::INTERMEDIATE;
				pAgent->setState(newState);
				if (BacteriaDAs.size() > 0
						&& mycoConcentration < ENISI::Threshold)
				{
					mpCompartment->removeAgent(BacteriaDAs[BacteriaDAs.size() - 1]);
					BacteriaDAs.pop_back();
				}
			}
			if ((IFNg > ENISI::Threshold || th1Concentration > ENISI::Threshold)
					&& p_monoinf > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				newState = MacrophageState::INFLAMMATORY;
				pAgent->setState(newState);
				if (BacteriaDAs.size() > 0
						&& mycoConcentration < ENISI::Threshold)
				{
					mpCompartment->removeAgent(BacteriaDAs[BacteriaDAs.size() - 1]);
					BacteriaDAs.pop_back();
				}
			}
			if (p_monobaserec > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, pAgent->getState()), Location);
			}
			if (p_Mbasal > monosConcentration)
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, pAgent->getState()), Location);
			}
			if (p_monodeath > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
			}
		}
		if (state == MacrophageState::INFLAMMATORY)
		{
			if (p_infmaccyto > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->cytokineValue("eIFNg", pt) += 5;
			}
			if ((epiinfConcentration > ENISI::Threshold || epidamConcentration > ENISI::Threshold) && p_monorec > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, MacrophageState::MONOCYTE), Location);
			}
			if (p_monodeath > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
			}
		}
		if (state == MacrophageState::INTERMEDIATE)
		{
			if (p_intmaccyto > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->cytokineValue("eTGFb", pt) += 5;
			}
			if ((epiinfConcentration > ENISI::Threshold || epidamConcentration > ENISI::Threshold) && p_monorec > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->getLocation(pAgent->getId(), Location);
				mpCompartment->addAgent(new Agent(Agent::Macrophage, MacrophageState::MONOCYTE), Location);
			}
			if (p_monodeath > repast::Random::instance()-> createUniDoubleGenerator(0.0, 1.0).next())
			{
				mpCompartment->removeAgent(pAgent);
			}
		}
	}
}

// virtual
void MacrophageGroup::move(){
	// TODO CRITICAL Determine the maximum speed
	double MaxSpeed = 1.0;

	// Find all local agents and move them
	Compartment::LocalIterator itLocal = mpCompartment->localBegin();
	Compartment::LocalIterator endLocal = mpCompartment->localEnd();

	for (; itLocal != endLocal; ++itLocal)
	{
		mpCompartment->moveRandom((*itLocal)->getId(), MaxSpeed);
	}
}

// virtual
void MacrophageGroup::write(const repast::Point<int> &)
{

}
