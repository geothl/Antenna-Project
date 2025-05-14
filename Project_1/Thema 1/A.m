function [out] = A(theta,phi,dx,dz,nlx,nlz,Nx,Nz)
psix=2*pi*nlx*cos(phi).*sin(theta)+dx;
psiz=2*pi*nlz*cos(theta)+dz;
out=abs(sin(0.5*Nx*psix)./sin(psix/2)).*abs(sin(0.5*Nz*psiz)./sin(psiz/2));
end
