#ifndef ENISI_MacrophageGroup
#define ENISI_MacrophageGroup

#include <string>
#include <vector>

#include "agent/AgentStates.h"
#include "repast_hpc/Point.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class MacrophageGroup: public GroupInterface
{
public:
	MacrophageGroup(Compartment * pCompartment,
			const double & concentrations,
			const double & regulatoryConcentration);

	virtual ~MacrophageGroup();

	virtual std::string classname() const {return "MacrophageGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:
	double p_rule42;
	double p_trmaccyto;
	double p_trmacrep;
	double p_trmackill;
	double p_trmacdeath;
	double p_trmacCap;
	double p_monorec;
	double p_monoint;
	double p_monoint2;
	double p_monoinf;
	double p_monodeath;
	double p_infmaccyto;
	double p_intmaccyto;
	double p_monobaserec;
	double p_Mbasal;
};

} // namespace ENISI

#endif // ENISI_MacrophageGroup
