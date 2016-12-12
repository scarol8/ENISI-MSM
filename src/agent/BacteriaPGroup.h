#ifndef ENISI_MSM_BACTERIAP_COMPONENT_H
#define ENISI_MSM_BACTERIAP_COMPONENT_H

#include "agent/AgentStates.h"
#include "agent/GroupInterface.h"

namespace ENISI
{

class BacteriaPGroup: public GroupInterface
{
public:
	BacteriaPGroup(Compartment * pCompartment, const double & concentrations);

	virtual std::string classname() const {return "BacteriaPGroup";}

protected:
	virtual void act(const repast::Point<int> &);
	virtual void move();
	virtual void write(const repast::Point<int> & pt);

private:
	double p_maxPara;
	double p_CorioInh;
	double p_faecali;
	double p_faecalikill;
	double p_faecalideath;
	double p_faecalirep;
	double p_bifido;
	double p_bifidokill;
	double p_bifidodeath;
	double p_bifidorep;
	double p_lacto;
	double p_lactokill;
	double p_lactodeath;
	double p_lactorep;
	double p_parabac;
	double p_parabackill;
	double p_parabacdeath;
	double p_parabacrep;
	double p_sboul;
	double p_sboulkill;
	double p_sbouldeath;
	double p_sboulrep;
	double p_erysi;
	double p_erysikill;
	double p_erysideath;
	double p_erysirep;
	double p_allbacSpace;

};

} // namespace ENISI

#endif
