close all
clear all

nR = 10;
r = linspace(-3,3,nR);



nZ = 101;
z = linspace(0.0,2.0,nZ);
flowVz = -875;
vz = zeros(1,nZ);
vz(find(z<=1.2)) = flowVz;
vz2D = repmat(vz,nR,1);

ncid = netcdf.create(['./profiles.nc'],'NC_WRITE')

dimR = netcdf.defDim(ncid,'nR',nR);
dimZ = netcdf.defDim(ncid,'nZ',nZ);

gridRnc = netcdf.defVar(ncid,'gridR','double',dimR);
gridZnc = netcdf.defVar(ncid,'gridZ','double',dimZ);
vz2Dnc = netcdf.defVar(ncid,'vz','double',[dimR dimZ]);
vy2Dnc = netcdf.defVar(ncid,'vy','double',[dimR dimZ]);
vx2Dnc = netcdf.defVar(ncid,'vx','double',[dimR dimZ]);
% Ni2Dnc = netcdf.defVar(ncid,'ni','double',[dimR dimZ]);
% Te2Dnc = netcdf.defVar(ncid,'te','double',[dimR dimZ]);
% Ti2Dnc = netcdf.defVar(ncid,'ti','double',[dimR dimZ]);


%neVar = netcdf.defVar(ncid, 'Ne2', 'double',dimR);
%teVar = netcdf.defVar(ncid, 'Te', 'double',dimR);
netcdf.endDef(ncid);

netcdf.putVar(ncid,gridRnc,r);
netcdf.putVar(ncid,gridZnc,z);
netcdf.putVar(ncid,vz2Dnc,vz2D);
netcdf.putVar(ncid,vx2Dnc,0*vz2D);
netcdf.putVar(ncid,vy2Dnc,0*vz2D);


%netcdf.putVar(ncid, neVar, Ne2);
%netcdf.putVar(ncid, teVar, Te);
netcdf.close(ncid);