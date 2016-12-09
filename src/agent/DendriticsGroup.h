#ifndef ENISI_MSM_AGENT_DENDRITICS_COMPONENT_H
#define ENISI_MSM_AGENT_DENDRITICS_COMPONENT_H

#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class DendriticsGroup: public GroupInterface
{
public:

	DendriticsGroup(Compartment * pCompartment, const double & concentrations);

	virtual std::string classname() const {return "DendriticsGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:
	double p_rule17a;
	double p_idcmovele;
	double p_idcmoveel;
	double p_idctdc;
	double p_idcedc;
	double p_idcedclp;
	double p_idcrec;
	double p_dcmovelg;
	double p_dcmoveel;
	double p_tdccyto;
	double p_edccyto;
	double p_dcdeath;

};

} // namespace ENISI
#endif
