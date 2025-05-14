function  Gamma=reflectance_coefficient_thema3(dnl)
Zs=73.1+1j*42.5;
Z0=50;
Zm1=parallel_mutual_impedence(dnl);
Zm2=parallel_mutual_impedence(2*dnl);
current_ratio=-Zm1./(Zs+Zm2);
Zin=2*Zm1.*current_ratio+Zs;
Gamma=abs((Zin-Z0)./(Zin+Z0));
end