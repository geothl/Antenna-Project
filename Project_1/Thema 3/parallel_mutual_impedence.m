function [Zm] = parallel_mutual_impedence(dnl)
l=0.5;
h0=120*pi;
u0=2*pi*dnl;
u1=2*pi*(sqrt(dnl.^2+l^2)+l);
u2=2*pi*(sqrt(dnl.^2+l^2)-l);
Rm=(h0/(4*pi))*(2*cosint(u0)-cosint(u1)-cosint(u2));
Xm=-(h0/(4*pi))*(2*sinint(u0)-sinint(u1)-sinint(u2));
Zm=Rm+1j*Xm;
end