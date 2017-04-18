#include "repast_hpc/RepastProcess.h"

#include "IBDModel.h"

#include "grid/Properties.h"

#include "compartment/Compartment.h"

#include "agent/BacteriaPGroup.h"
#include "agent/DendriticsGroup.h"
#include "agent/EpithelialCellGroup.h"
#include "agent/BacteriaDAGroup.h"
#include "agent/TcellGroup.h"
#include "agent/MacrophageGroup.h"
#include "agent/NeutrophilGroup.h"
#include "DataWriter/LocalFile.h"

using namespace ENISI;

IBDModel::~IBDModel()
{
  if (mp_lumen != NULL) delete mp_lumen;
  if (mp_epithilium != NULL) delete mp_epithilium;
  if (mp_lamina_propria != NULL) delete mp_lamina_propria;
  if (mp_gastric_lymph_node != NULL) delete mp_gastric_lymph_node;

  LocalFile::close();
}

IBDModel::IBDModel():
  mp_lumen(NULL),
  mp_epithilium(NULL),
  mp_lamina_propria(NULL),
  mp_gastric_lymph_node(NULL),
  mpProperties(Properties::instance(Properties::model))
{ 
  ENISI::init();

  initialize_lumen();
  initialize_epithilium();
  initialize_lamina_propria();
  initialize_gastric_lymph_node();
}

void IBDModel::initialize_lumen()
{
  mp_lumen = ENISI::Compartment::instance(ENISI::Compartment::lumen);

  double concentration;

  if (!mpProperties->getValue("lumen.BacteriaDA.concentration", concentration)) concentration = 0;
  new BacteriaDAGroup(mp_lumen, concentration);

  if (!mpProperties->getValue("lumen.BacteriaP.concentration", concentration)) concentration = 0;
  new BacteriaPGroup(mp_lumen, concentration);

  /* mp_lumen->addCytokine("eIL6");
  mp_lumen->addCytokine("eTGFb");
  mp_lumen->addCytokine("eIL12");
  mp_lumen->addCytokine("eIL17");
  mp_lumen->addCytokine("eIL10");
  mp_lumen->addCytokine("eIFNg");*/

  mp_lumen->initializeDiffuserData();
}

void IBDModel::initialize_epithilium()
{
  mp_epithilium = ENISI::Compartment::instance(ENISI::Compartment::epithilium);

  double concentration;

  if (!mpProperties->getValue("epithilium.EpithelialCell.concentration", concentration)) concentration = 0;
  new EpithelialCellGroup(mp_epithilium, concentration);

  if (!mpProperties->getValue("epithilium.Dendritics.concentration", concentration)) concentration = 0;
  new DendriticsGroup(mp_epithilium, concentration);

  /*mp_epithilium->addCytokine("eIL6");
  mp_epithilium->addCytokine("eTGFb");
  mp_epithilium->addCytokine("eIL12");
  mp_epithilium->addCytokine("eIL17");
  mp_epithilium->addCytokine("eIL10");
  mp_epithilium->addCytokine("eIFNg");*/

  mp_epithilium->initializeDiffuserData();
}

void IBDModel::initialize_lamina_propria()
{
  mp_lamina_propria = ENISI::Compartment::instance(ENISI::Compartment::lamina_propria);

  double concentration;

  if (!mpProperties->getValue("lamina_propria.Dendritics.concentration", concentration)) concentration = 0;
  new DendriticsGroup(mp_lamina_propria, concentration);

  if (!mpProperties->getValue("lamina_propria.Tcell.concentration", concentration)) concentration = 0;
  new TcellGroup(mp_lamina_propria, concentration);

  if (!mpProperties->getValue("lamina_propria.BacteriaDA.concentration", concentration)) concentration = 0;
  new BacteriaDAGroup(mp_lamina_propria, concentration);

  if (!mpProperties->getValue("lamina_propria.BacteriaP.concentration", concentration)) concentration = 0;
  new BacteriaPGroup(mp_lamina_propria, concentration);

  if (!mpProperties->getValue("lamina_propria.macrophages.monocyte.concentration", concentration)) concentration = 0;

  double concentration2;

  if (!mpProperties->getValue("lamina_propria.macrophages.regulatory.concentration", concentration2)) concentration2 = 0;
  new MacrophageGroup(mp_lamina_propria, concentration, concentration2);

  if (!mpProperties->getValue("lamina_propria.Neutrophil.concentration", concentration)) concentration = 0;
  new NeutrophilGroup(mp_lamina_propria, concentration);

  mp_lamina_propria->addCytokine("eIL6");
  mp_lamina_propria->addCytokine("eTGFb");
  mp_lamina_propria->addCytokine("eIL12");
  mp_lamina_propria->addCytokine("eIL17");
  mp_lamina_propria->addCytokine("eIL8");
  mp_lamina_propria->addCytokine("eIL22");
  mp_lamina_propria->addCytokine("eTNFa");
  mp_lamina_propria->addCytokine("eIL10");
  mp_lamina_propria->addCytokine("eIFNg");

  mp_lamina_propria->initializeDiffuserData();
}

void IBDModel::initialize_gastric_lymph_node()
{
  mp_gastric_lymph_node = ENISI::Compartment::instance(ENISI::Compartment::gastric_lymph_node);

  double concentration;

  if (!mpProperties->getValue("gastric_lymph_node.Dendritics.concentration", concentration)) concentration = 0;
  new DendriticsGroup(mp_gastric_lymph_node, concentration);

  if (!mpProperties->getValue("gastric_lymph_node.Tcell.concentration", concentration)) concentration = 0;
  new TcellGroup(mp_gastric_lymph_node, concentration);

  mp_gastric_lymph_node->addCytokine("eIL6");
  mp_gastric_lymph_node->addCytokine("eTGFb");
  mp_gastric_lymph_node->addCytokine("eIL12");
  mp_gastric_lymph_node->addCytokine("eIL17");
  mp_gastric_lymph_node->addCytokine("eIL8");
  mp_gastric_lymph_node->addCytokine("eIL22");
  mp_gastric_lymph_node->addCytokine("eTNFa");
  mp_gastric_lymph_node->addCytokine("eIL10");
  mp_gastric_lymph_node->addCytokine("eIFNg");

  mp_gastric_lymph_node->initializeDiffuserData();
}


void IBDModel::initSchedule(repast::ScheduleRunner & runner)
{
  // We need to schedule diffusion and agent interaction.

  runner.scheduleEvent(0.01, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::synchronize)));
  runner.scheduleEvent(0.02, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::recordResults)));

  runner.scheduleEvent(0.97, 1.0, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::act)));
  runner.scheduleEvent(0.98, 1.0, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::diffuse)));
  runner.scheduleEvent(0.99, 1.0, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::synchronize)));
  runner.scheduleEvent(1.00, 1.0, repast::Schedule::FunctorPtr(new repast::MethodFunctor<IBDModel> (this, &IBDModel::recordResults)));

  /* Schedule will repeat infinitely without a stop */
  double stopAt = 1;
  Properties::instance(Properties::run)->getValue("stop.at", stopAt);
  stopAt += 0.001;
  runner.scheduleStop(stopAt);

  return;
}


void IBDModel::act()
{
  mp_lumen->act();
  mp_epithilium->act();
  mp_lamina_propria->act();
  mp_gastric_lymph_node->act();

  return;
}

void IBDModel::diffuse()
{
  mp_lamina_propria->diffuse();
  mp_gastric_lymph_node->diffuse();
}

void IBDModel::synchronize()
{
  mp_lumen->synchronizeCells();
  mp_epithilium->synchronizeCells();
  mp_lamina_propria->synchronizeCells();
  mp_gastric_lymph_node->synchronizeCells();

  mp_lumen->synchronizeDiffuser();
  mp_epithilium->synchronizeDiffuser();
  mp_lamina_propria->synchronizeDiffuser();
  mp_gastric_lymph_node->synchronizeDiffuser();
}

void IBDModel::recordResults()
{
  mp_lumen->write("\t");
  mp_epithilium->write("\t");
  mp_lamina_propria->write("\t");
  mp_gastric_lymph_node->write("\t");

  return;
}
