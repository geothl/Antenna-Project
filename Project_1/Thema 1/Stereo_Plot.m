function  rho= Stereo_Plot(nlx,nlz,th0,Nx,Nz)
dz=0;
dx=-nlx*2*pi*sin(th0);
[theta,phi] = meshgrid(0.0001:0.01:pi-0.001,0:0.01:2*pi);
rho=abs((cos(pi/2*cos(theta))./sin(theta))).*A(theta,phi,dx,dz,nlx,nlz,Nx,Nz);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
figure;
surf(x_P,y_P,z_P); 
%axis equal;
strtheta=num2str(rad2deg(th0));
if(nlx==0.5)
    title({'\textbf{H-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{\lambda}{2}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);
else
    title({'\textbf{H-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{3\lambda}{4}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);  
end

hold on;
end