function Etheta=thema2_antenna_opt(th0)
rnl=100;
hnl=1/8;
r1nl=sqrt(hnl^2+rnl^2-2*hnl*rnl);
r2nl=sqrt(hnl^2+rnl^2+2*hnl*rnl);
Etheta=-abs(cos(0.5*pi*cos(pi/2-th0))/sin(pi/2-th0)*exp(-1j*2*pi*r1nl)/rnl-cos(0.5*pi*cos(pi/2+th0))/sin(pi/2+th0)*exp(-1j*2*pi*r2nl)/rnl);
end