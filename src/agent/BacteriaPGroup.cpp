#include "BacteriaPGroup.h"

#include "agent/ENISIAgent.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"

using namespace ENISI;

BacteriaPGroup::BacteriaPGroup(Compartment * pCompartment, const double & concentrations) :
								  GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);

	for (size_t i = 0; i < LocalCount; i++)
	{
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::BacteriaP, BacteriaPState::NAIVE));
	}

	const Properties * pModel = Properties::instance(Properties::model);

	pModel->getValue("p_faecali", p_faecali);
	pModel->getValue("p_faecalikill", p_faecalikill);
	pModel->getValue("p_faecalideath", p_faecalideath);
	pModel->getValue("p_faecalirep", p_faecalirep);
	pModel->getValue("p_bifido", p_bifido);
	pModel->getValue("p_bifidokill", p_bifidokill);
	pModel->getValue("p_bifidodeath", p_bifidodeath);
	pModel->getValue("p_bifidorep", p_bifidorep);
	pModel->getValue("p_lactokill", p_lactokill);
	pModel->getValue("p_lactodeath", p_lactodeath);
	pModel->getValue("p_lactorep", p_lactorep);
	pModel->getValue("p_lacto", p_lacto);
	pModel->getValue("p_parabac", p_parabac);
	pModel->getValue("p_parabackill", p_parabackill);
	pModel->getValue("p_parabacdeath", p_parabacdeath);
	pModel->getValue("p_parabacrep", p_parabacrep);
	pModel->getValue("p_sboul", p_sboul);
	pModel->getValue("p_sboulkill", p_sboulkill);
	pModel->getValue("p_sbouldeath", p_sbouldeath);
	pModel->getValue("p_sboulrep", p_sboulrep);
	pModel->getValue("p_erysi", p_erysi);
	pModel->getValue("p_erysikill", p_erysikill);
	pModel->getValue("p_erysideath", p_erysideath);
	pModel->getValue("p_erysirep", p_erysirep);
	pModel->getValue("p_maxPara", p_maxPara);
	pModel->getValue("p_CorioInh", p_CorioInh);
	pModel->getValue("p_allbacSpace", p_allbacSpace);									  
									  
}

void BacteriaPGroup::act(const repast::Point<int> & pt)
{
	std::vector< double > Location(2, 0);
	std::vector< Agent * > BacteriaPs;
	mpCompartment->getAgents(pt, Agent::BacteriaP, BacteriaPs);

	std::vector< Agent * > BacteriaDAs;
	std::vector< Agent * > EpithelialCells;

	if (mpCompartment->getType() == Compartment::lumen
			&& mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
	{
		mpCompartment->getAgents(pt, 0, 1, Agent::EpithelialCell, EpithelialCells);
	}

	if (mpCompartment->getType() == Compartment::lumen)
	{
		mpCompartment->getAgents(pt, Agent::BacteriaDA, BacteriaDAs);
	}

	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);

	double corioConcentration = BacteriaDAConcentration[BacteriaDAState::CORIO];

	Concentration BacteriaPConcentration;
	concentrations(Agent::BacteriaP, BacteriaPs, BacteriaPConcentration);

	double faecaliConcentration = BacteriaPConcentration[BacteriaPState::FAECALI];
	double bifidoConcentration = BacteriaPConcentration[BacteriaPState::BIFIDO];
	double lactoConcentration = BacteriaPConcentration[BacteriaPState::LACTO];
	double parabacConcentration = BacteriaPConcentration[BacteriaPState::PARABAC];
	double sboulConcentration = BacteriaPConcentration[BacteriaPState::SBOUL];
	double erysiConcentration = BacteriaPConcentration[BacteriaPState::ERYSI];

	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	double inflamedEpithelialCellConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];

	std::vector< Agent * >::iterator it = BacteriaPbegin();
	std::vector< Agent * >::iterator end = BacteriaPend();

	for (; it != end; ++it)
	{
		Agent * pAgent = *it;
		BacteriaPState::State state = (BacteriaPState::State) pAgent->getState();

		if (state == BacteriaPState::DEAD)
		{
			continue;
		}

		if (state == BacteriaPState::NAIVE)
		{
			double bacteriaPinit = repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())

		if (bacteriaPinit > p_faecali)
		{
			newState = BacteriaPState::FAECALI;
			pAgent->setState(newState);
		}
		else if (bacteriaPinit > p_bifido)
		{
			newState = BacteriaPState::BIFIDO;
			pAgent->setState(newState);
		}
		else if (bacteriaPinit > p_lacto)
		{
			newState = BacteriaPState::LACTO;
			pAgent->setState(newState);
		}
		else if (bacteriaPinit > p_parabac)
		{
			newState = BacteriaPState::PARABAC;
			pAgent->setState(newState);
		}
		else if (bacteriaPinit > p_sboul)
		{
			newState = BacteriaPState::SBOUL;
			pAgent->setState(newState);
		}
		else if (bacteriaPinit > p_erysi)
		{
			newState = BacteriaPState::ERYSI;
			pAgent->setState(newState);
		}
		}
		if (state == BacteriaPState::FAECALI)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_faecalikill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_faecalideath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_faecalirep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& faecaliConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaPState::BIFIDO)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_bifidokill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if ((p_bifidodeath - (parabacConcentration / p_maxPara)) > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_bifidorep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& bifidoConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaPState::LACTO)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_lactokill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if ((p_lactodeath - (parabacConcentration / p_maxPara)) > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_lactorep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& lactoConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaPState::PARABAC)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_parabackill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_parabacdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_parabacrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& parabacConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaPState::SBOUL)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_sboulkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_sbouldeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_sboulrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& sboulConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaPState::ERYSI)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_erysikill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if ((p_erysideath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (corioConcentration / (erysiConcentration + 1) > p_CorioInh))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_erysirep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& erysiConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaP, pAgent->getState()), Location);
				}
			}
		}
	}
}
	// virtual
	void BacteriaPGroup::move(){
		// TODO CRITICAL Determine the maximum speed
		double MaxSpeed = 4.0;

		// Find all local agents and move them
		Compartment::LocalIterator itLocal = mpCompartment->localBegin();
		Compartment::LocalIterator endLocal = mpCompartment->localEnd();

		for (; itLocal != endLocal; ++itLocal){
			mpCompartment->moveRandom((*itLocal)->getId(), MaxSpeed);
		}
	}

	// virtual
	void BacteriaPGroup::write(const repast::Point<int> &){
	}
