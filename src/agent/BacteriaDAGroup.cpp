#include "BacteriaDAGroup.h"
#include "grid/Borders.h"
#include "compartment/Compartment.h"
#include "grid/Properties.h"
#include "DataWriter/LocalFile.h"
using namespace ENISI;

BacteriaDAGroup::BacteriaDAGroup(Compartment * pCompartment, const double & concentrations):
				  GroupInterface(pCompartment)
{
	size_t LocalCount = mpCompartment->localCount(concentrations);
	for (size_t i = 0; i < LocalCount; i++){
		mpCompartment->addAgentToRandomLocation(new Agent(Agent::BacteriaDA, BacteriaDAState::NAIVE));
	}
	const Properties * pModel = Properties::instance(Properties::model);
	pModel->getValue("p_kleb", p_kleb);
	pModel->getValue("p_ecoli", p_ecoli);
	pModel->getValue("p_myco", p_myco);
	pModel->getValue("p_corio", p_corio);
	pModel->getValue("p_entero", p_entero);
	pModel->getValue("p_klebtrans", p_klebtrans);
	pModel->getValue("p_kleblumkill", p_kleblumkill);
	pModel->getValue("p_kleblumdeath", p_kleblumdeath);
	pModel->getValue("p_kleblumrep", p_kleblumrep);
	pModel->getValue("p_kleblpkilln", p_kleblpkilln);
	pModel->getValue("p_kleblpkillm", p_kleblpkillm);
	pModel->getValue("p_kleblpdeath", p_kleblpdeath);
	pModel->getValue("p_CommProInh", p_CommProInh);
	pModel->getValue("p_ecolitrans", p_ecolitrans);
	pModel->getValue("p_ecolilumkill", p_ecolilumkill);
	pModel->getValue("p_ecolilumdeath", p_ecolilumdeath);
	pModel->getValue("p_ecolilumrep", p_ecolilumrep);
	pModel->getValue("p_ecolilpkilln", p_ecolilpkilln);
	pModel->getValue("p_ecolilpkillm", p_ecolilpkillm);
	pModel->getValue("p_ecolilpdeath", p_ecolilpdeath);
	pModel->getValue("p_ecolilprep", p_ecolilprep);
	pModel->getValue("p_mycotrans", p_mycotrans);
	pModel->getValue("p_mycolumkill", p_mycolumkill);
	pModel->getValue("p_mycolumdeath", p_mycolumdeath);
	pModel->getValue("p_mycolumrep", p_mycolumrep);
	pModel->getValue("p_mycolpkilln", p_mycolpkilln);
	pModel->getValue("p_mycolpkillm", p_mycolpkillm);
	pModel->getValue("p_mycolpdeath", p_mycolpdeath);
	pModel->getValue("p_mycolprep", p_mycolprep);
	pModel->getValue("p_coriolumkill", p_coriolumkill);
	pModel->getValue("p_coriolumdeath", p_coriolumdeath);
	pModel->getValue("p_coriolumrep", p_coriolumrep);
	pModel->getValue("p_ErysiProInh", p_ErysiProInh);
	pModel->getValue("p_enterolumkill", p_enterolumkill);
	pModel->getValue("p_enterolumdeath", p_enterolumdeath);
	pModel->getValue("p_enterolumrep", p_enterolumrep);
	pModel->getValue("p_allbacSpace", p_allbacSpace);
}

void BacteriaDAGroup::act(const repast::Point<int> & pt){

	std::vector< double > Location(2, 0);
	std::vector< Agent * > BacteriaDAs;
	mpCompartment->getAgents(pt, Agent::BacteriaDA, BacteriaDAs);

	std::vector< Agent * > Tcells;
	std::vector< Agent * > EpithelialCells;
	std::vector< Agent * > BacteriaPs;
	std::vector< Agent * > Neutrophils;
	std::vector< Agent * > Macrophages;

	if (mpCompartment->getType() == Compartment::lumen
			&& mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::HIGH) < 1.5)
	{
		mpCompartment->getAgents(pt, 0, 1, Agent::EpithelialCell, EpithelialCells);
	}

	if (mpCompartment->getType() == Compartment::lamina_propria
			&& mpCompartment->gridBorders()->distanceFromBorder(pt.coords(), Borders::Y, Borders::LOW) < 0.5)
	{
		mpCompartment->getAgents(pt, 0, -1, Agent::EpithelialCell, EpithelialCells);
	}

	if (mpCompartment->getType() == Compartment::lumen)
	{
		mpCompartment->getAgents(pt, Agent::BacteriaP, BacteriaPs);
	}

	if (mpCompartment->getType() == Compartment::lamina_propria)
	{
		mpCompartment->getAgents(pt, Agent::Neutrophil, Neutrophils);
		mpCompartment->getAgents(pt, Agent::Macrophage, Macrophages);
		mpCompartment->getAgents(pt, Agent::Tcell, Tcells);
	}

	// We only request information if we are at the border

	Concentration TcellConcentration;
	concentrations(Agent::Tcell, Tcells, TcellConcentration);

	double th1Concentration = TcellConcentration[TcellState::TH1];
	double th17Concentration = TcellConcentration[TcellState::TH17];

	Concentration MacrophageConcentration;
	concentrations(Agent::Macrophage, Macrophages, MacrophageConcentration);

	double trmacConcentration = MacrophageConcentration[MacrophageState::RESIDENT];
	double infmacConcentration = MacrophageConcentration[MacrophageState::INFLAMMATORY];
	double intmacConcentration = MacrophageConcentration[MacrophageState::INTERMEDIATE];

	Concentration NeutrophilConcentration;
	concentrations(Agent::Neutrophil, Neutrophils, NeutrophilConcentration);

	double aneutrophilConcentration = NeutrophilConcentration[NeutrophilState::ACTIVATED];

	Concentration BacteriaDAConcentration;
	concentrations(Agent::BacteriaDA, BacteriaDAs, BacteriaDAConcentration);

	double klebConcentration = BacteriaDAConcentration[BacteriaDAState::KLEB];
	double ecoliConcentration = BacteriaDAConcentration[BacteriaDAState::ECOLI];
	double mycoConcentration = BacteriaDAConcentration[BacteriaDAState::MYCO];
	double corioConcentration = BacteriaDAConcentration[BacteriaDAState::CORIO];
	double enteroConcentration = BacteriaDAConcentration[BacteriaDAState::ENTERO];

	Concentration BacteriaPConcentration;
	concentrations(Agent::BacteriaP, BacteriaPs, BacteriaPConcentration);

	double bifidoConcentration = BacteriaPConcentration[BacteriaPState::BIFIDO];
	double lactoConcentration = BacteriaPConcentration[BacteriaPState::LACTO];
	double erysiConcentration = BacteriaPConcentration[BacteriaPState::ERYSI];

	/*identify states of Epithelial Cells counted */
	Concentration EpithelialCellConcentration;
	concentrations(Agent::EpithelialCell, EpithelialCells, EpithelialCellConcentration);

	double damagedEpithelialCellConcentration = EpithelialCellConcentration[EpithelialCellState::DAMAGED];
	double inflamedEpithelialCellConcentration = EpithelialCellConcentration[EpithelialCellState::INFLAMED];

	std::vector< Agent * >::iterator it = BacteriaDA.begin();
	std::vector< Agent * >::iterator end = BacteriaDA.end();

	for (; it != end; ++it)
	{
		Agent * pAgent = *it;
		BacteriaDAState::State state = (BacteriaDAState::State) pAgent->getState();

		if (state == BacteriaDAState::DEAD) continue;

		if (state == BacteriaDAState::NAIVE)
		{
			double bacteriaDAinit = repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())

		if (bacteriaDAinit > p_kleb)
		{
			newState = BacteriaDAState::KLEB;
			pAgent->setState(newState);
		}
		else if (bacteriaDAinit > p_ecoli)
		{
			newState = BacteriaDAState::ECOLI;
			pAgent->setState(newState);
		}
		else if (bacteriaDAinit > p_myco)
		{
			newState = BacteriaDAState::MYCO;
			pAgent->setState(newState);
		}
		else if (bacteriaDAinit > p_corio)
		{
			newState = BacteriaDAState::CORIO;
			pAgent->setState(newState);
		}
		else if (bacteriaDAinit > p_entero)
		{
			newState = BacteriaDAState::ENTERO;
			pAgent->setState(newState);
		}
		}
		if (state == BacteriaDAState::KLEB)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// translocation across damaged epithelium
				if ((p_klebtrans > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
						&& damagedEpithelialCellConcentration)
				{
					std::vector< double > Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] +=
							mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH) // Move accross the border
							+ Compartment::instance(Compartment::epithilium)->spaceDimensions().extents(Borders::Y); // Move all the way through the epithelium
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_kleblumkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_kleblumdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_kleblumrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (bifidoConcentration + lactoConcentration) < p_CommProInh
				   		&& klebConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
			if (mpCompartment->getType() == Compartment::lamina_propria)
			{
				// death by neutrophil
				if ((aneutrophilConcentration > ENISI::Threshold)
						&& (p_kleblpkilln > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// death by macrophage/T cell
				if ((infmacConcentration > ENISI::Threshold)
						&& ((th1Concentration > ENISI::Threshold) || (th17Concentration > ENISI::Threshold))
						&& (p_kleblpkillm > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_kleblpdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
			}
		}
		if (state == BacteriaDAState::ECOLI)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// translocation across damaged epithelium
				if ((p_ecolitrans > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
						&& damagedEpithelialCellConcentration)
				{
					std::vector< double > Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] +=
							mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH) // Move accross the border
							+ Compartment::instance(Compartment::epithilium)->spaceDimensions().extents(Borders::Y); // Move all the way through the epithelium
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_ecolilumkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_ecolilumdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_ecolilumrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (bifidoConcentration + lactoConcentration) < p_CommProInh
				   		&& ecoliConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
			if (mpCompartment->getType() == Compartment::lamina_propria)
			{
				// death by neutrophil
				if ((aneutrophilConcentration > ENISI::Threshold)
						&& (p_ecolilpkilln > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// death by macrophage/T cell
				if ((infmacConcentration > ENISI::Threshold)
						&& ((th1Concentration > ENISI::Threshold) || (th17Concentration > ENISI::Threshold))
						&& (p_ecolilpkillm > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_ecolilpdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_ecolilprep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& trmacConcentration > ENISI::Threshold
				   		&& ecoliConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaDAState::MYCO)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// translocation across damaged epithelium
				if ((p_mycotrans > repast::Random::instance()->createUniDoubleGenerator(0.0,1.0).next())
						&& damagedEpithelialCellConcentration)
				{
					std::vector< double > Location;
					mpCompartment->getLocation(pAgent->getId(), Location);
					Location[Borders::Y] +=
							mpCompartment->spaceBorders()->distanceFromBorder(Location, Borders::Y, Borders::HIGH) // Move accross the border
							+ Compartment::instance(Compartment::epithilium)->spaceDimensions().extents(Borders::Y); // Move all the way through the epithelium
					mpCompartment->moveTo(pAgent->getId(), Location);
					continue;
				}
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_mycolumkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_mycolumdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_mycolumrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (bifidoConcentration + lactoConcentration) < p_CommProInh
				   		&& mycoConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
			if (mpCompartment->getType() == Compartment::lamina_propria)
			{
				// death by neutrophil
				if ((aneutrophilConcentration > ENISI::Threshold)
						&& (p_kleblpkilln > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// death by macrophage/T cell
				if ((infmacConcentration > ENISI::Threshold)
						&& ((th1Concentration > ENISI::Threshold) || (th17Concentration > ENISI::Threshold))
						&& (p_kleblpkillm > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_mycolpdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if (p_mycolprep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
				   		&& mycoConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaDAState::CORIO)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_coriolumkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_coriolumdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()
						&& erysiConcentration / (corioConcentration + 1) > p_ErysiProInh)
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_coriolumrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (bifidoConcentration + lactoConcentration) < p_CommProInh
				   		&& corioConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
		}
		if (state == BacteriaDAState::ENTERO)
		{
			if (mpCompartment->getType() == Compartment::lumen)
			{
				// death by inflamed epithelium
				if ((inflamedEpithelialCellConcentration > ENISI::Threshold)
						&& (p_enterolumkill > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next()))
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// random death
				if (p_enterolumdeath > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
				{
					mpCompartment->removeAgent(pAgent);
					continue;
				}
				// proliferation
				if ((p_enterolumrep > repast::Random::instance()->createUniDoubleGenerator(0.0, 1.0).next())
						&& (bifidoConcentration + lactoConcentration) < p_CommProInh
				   		&& enteroConcentration < p_allbacSpace)
				{
					mpCompartment->getLocation(pAgent->getId(), Location);
					mpCompartment->addAgent(new Agent(Agent::BacteriaDA, pAgent->getState()), Location);
				}
			}
		}
	}
}
	// virtual
	void BacteriaDAGroup::move(){
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
	void BacteriaDAGroup::write(const repast::Point<int> &){

	}
