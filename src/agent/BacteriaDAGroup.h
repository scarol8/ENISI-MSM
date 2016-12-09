#ifndef ENISI_MSM_AGENT_BACTERIADAGROUP_H
#define ENISI_MSM_AGENT_BACTERIADAGROUP_H

#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class BacteriaDAGroup: public GroupInterface
{
public:
	BacteriaDAGroup(Compartment * pCompartment, const double & concentrations);
	virtual std::string classname() const {return "BacteriaDAGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:
	double p_kleb;
	double p_klebtrans;
	double p_kleblumkill;
	double p_kleblumdeath;
	double p_kleblumrep;
	double p_kleblpkilln;
	double p_kleblpkillm;
	double p_kleblpdeath;
	double p_ecoli;
	double p_ecolitrans;
	double p_ecolilumkill;
	double p_ecolilumdeath;
	double p_ecolilumrep;
	double p_ecolilpkilln;
	double p_ecolilpkillm;
	double p_ecolilpdeath;
	double p_ecolilprep;
	double p_myco;
	double p_mycotrans;
	double p_mycolumkill;
	double p_mycolumdeath;
	double p_mycolumrep;
	double p_mycolpkilln;
	double p_mycolpkillm;
	double p_mycolpdeath;
	double p_mycolprep;
	double p_corio;
	double p_coriolumkill;
	double p_coriolumdeath;
	double p_coriolumrep;
	double p_entero;
	double p_enterolumkill;
	double p_enterolumdeath;
	double p_enterolumrep;
	double p_CommProInh;
	double p_ErysiProInh;

};

} // namespace ENISI

#endif
