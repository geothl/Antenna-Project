function  D= Directivity(nlx,nlz,th0,Nx,Nz)
theta=0.001:0.001:pi-0.001;
phi=0.001:0.01:2*pi;
dz=0;
dx=-nlx*2*pi*sin(th0);
den=0;
dS=0.001*0.01;
for i=1:length(theta)
    for j=1:length(phi)
    den=den+dS*(cos(pi/2*cos(theta(i)))/sin(theta(i)))^2*sin(theta(i))*(A(theta(i),phi(j),dx,dz,nlx,nlz,Nx,Nz))^2;
    end
end
D=(4*pi*Nx^2*Nz^2)/den;

end