#ifndef _GITRUTILS_
#define _GITRUTILS_


#include "Particle.h"
#include "libconfig.h++"
#include "cudaParticle.h"

void INPUT(int& nP, double& sourceStrength,double& x_start,double& y_start,double& z_start,double& energy_eV_x_start,double& energy_eV_y_start,
	double&	energy_eV_z_start,double& impurity_amu, double& impurity_Z,int& nDensityChargeBins	,double& xMinV,double& xMaxV,double& yMin,double& yMax,double& zMin,double& zMax,	int& nXv,
	int& nYv,int& nZv,int& nY,int& nZ,double& surface_dz_dx,double& surface_zIntercept,double& connectionLength,
	int& nBackgroundSpecies,double& nPtsPerGyroOrbit,	int& ionization_nDtPerApply,int& collision_nDtPerApply,int& nT,double& Bx_in,
	double& By_in,double& Bz_in,double& perDiffusionCoeff_in,double& densitySOLDecayLength,double& tempSOLDecayLength);
	
void INPUT2(int nDensityChargeBins,int nBackgroundSpecies,int densityChargeBins[],int background_Z[], double background_amu[], double background_flow[], double maxDensity[],double maxTemp_eV[]);

void MESH(int myID, int nWRs,double r[], double z[], double dr,double dz, int localMz, int Mrp1, double Rin, double Rout, double Ztop, double Ar[], double Az[], double Vij[]);

void INIT(int nP, Particle p[], libconfig::Config &cfg);

void OUTPUT(char outname[],int nX, int nY, double **array2d);

void SEND_2doutput_MPI(int myID,int nX, int nY,double **arr);
void RECV_2doutput_MPI(int nWRs, int nX, int nY,double **local, double **global);

void Efield(double E[], double perpDistanceToSurface);

#endif
