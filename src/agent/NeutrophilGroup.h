#ifndef ENISI_MSM_AGENT_NEUTROPHIL_COMPONENT_H
#define ENISI_MSM_AGENT_NEUTROPHIL_COMPONENT_H

#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class NeutrophilGroup: public GroupInterface
{
public:

  NeutrophilGroup(Compartment * pCompartment, const double & concentrations);

  virtual std::string classname() const {return "NeutrophilGroup";}

protected:
  virtual void act(const repast::Point<int> &);
  virtual void move();
  virtual void write(const repast::Point<int> & pt);

private:
  double p_nrecmac;
  double p_nrecei;
  double p_nreced;
  double p_nbactact;
  double p_nepiact;
  double p_nbasedeath;
  double p_nskipecoli;
  double p_nkillbac;
  double p_nactdeath;
  double p_th1max;
  double p_neutbaserec;
};

} // namespace ENISI
#endif
