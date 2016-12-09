#ifndef ENISI_MSM_AGENT_TCELLGROUP_H
#define ENISI_MSM_AGENT_TCELLGROUP_H


#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class TcellGroup: public GroupInterface
{
public:
	TcellGroup(Compartment * pCompartment, const double & concentrations);
	virtual std::string classname() const {return "TcellGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:

	double p_alltrep;
	double p_th1diff;
	double p_th17diff;
	double p_tregdiff;
	double p_IL10;
	double p_IL17;
	double p_IFNg;
	double p_ntdeath;
	double p_th17treg;
	double p_tregth17;
	double p_th17cyto;
	double p_tregcyto;
	double p_th1cyto;
	double p_tcelltrans;
	double p_th17death;
	double p_tregdeath;
	double p_th1death;
	double p_th17rep;
	double p_tregrep;
	double p_th1rep;
	double p_allTcap;


};

} // namespace ENISI

#endif
