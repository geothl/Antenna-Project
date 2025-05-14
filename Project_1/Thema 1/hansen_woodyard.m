
nlx=0.25;
nlz=0.5;
Nx=16;
Nz=12;
dx=-2*pi*nlx-2.92/Nx;
dz=0;
th0=pi/2;
[theta,phi] = meshgrid(0.0001:0.01:pi,0:0.01:2*pi);
rho=abs((cos(pi/2*cos(theta))./sin(theta))).*A(theta,phi,dx,dz,nlx,nlz,Nx,Nz);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
figure;
surf(x_P,y_P,z_P); 
title('Hansen-Woodyard')
xlabel('x')
ylabel('y')
zlabel('z')
axis equal;
hold on;


theta=0.01:0.01:(pi-0.01);
phi=0:0.01:2*pi;
dz=0;
dx=-nlx*2*pi-2.92/Nx;
den=0;
dS=0.01*0.01;
AF=[];
for i=1:length(theta)
    for j=1:length(phi)
        
        den=den+dS*((cos(pi/2*cos(theta(i)))/sin(theta(i)))^2*sin(theta(i))*(A(theta(i),phi(j),dx,dz,nlx,nlz,Nx,Nz))^2);
        AF=[AF,A(theta(i),phi(j),dx,dz,nlx,nlz,Nx,Nz)];
    end
end
%nxx=sin(1.46)/sin(1.46/16);
maxAF=max(AF);
D=(4*pi*maxAF^2)/den;