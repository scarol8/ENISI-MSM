#ifndef ENISI_EpithelialCellGroup
#define ENISI_EpithelialCellGroup

#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class EpithelialCellGroup: public GroupInterface
{
public:
	EpithelialCellGroup(Compartment * pCompartment, const double & concentrations);
	virtual std::string classname() const {return "EpithelialCellGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:
	double p_epiecolidam;
	double p_epibifidoprot;
	double p_epilactoprot;
	double p_epimycodam;
	double p_epineutdam;
	double p_epimacdam;
	double p_epith1inf;
	double p_epith17inf;
	double p_epidaminf;
	double p_epirep;
	double p_epideath;
	double p_epiiecolidam;
	double p_epiimycodam;
	double p_epiineutdam;
	double p_epiimacdam;
	double p_epiil10;
	double p_epiitrheal;
	double p_epicyto;
	double p_epiideath;
	double p_epidneutdam;
	double p_epidmacdam;
	double p_epidtrheal;
	double p_epiddeath;
	double p_epidremove;
	double p_epidead;
};

} // namespace ENISI

#endif // ENISI_EpithelialCellGroup
