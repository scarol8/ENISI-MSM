#ifndef ENISI_MSM_IBD_MODEL_H
#define ENISI_MSM_IBD_MODEL_H

#include <repast_hpc/Properties.h>
#include "repast_hpc/Schedule.h"

namespace ENISI
{

class Compartment;
class Properties;

class IBDModel
{ 
public:
  IBDModel();
  ~IBDModel();

  void initSchedule(repast::ScheduleRunner &); 

protected:
  void initialize_lumen();
  void initialize_epithilium();
  void initialize_lamina_propria();
  void initialize_gastric_lymph_node();

  void act();
  void diffuse();
  void synchronize();
  void recordResults();

private:
  Compartment * mp_lumen;
  Compartment * mp_epithilium;
  Compartment * mp_lamina_propria;
  Compartment * mp_gastric_lymph_node;
  const Properties * mpProperties;
};

} // namespace ENISI

#endif
