function  rho= H_plane(nlx,nlz,th0,Nx,Nz)
dz=0;
dx=-nlx*2*pi*sin(th0);
phi=linspace(0,2*pi,1000);
rho=A(pi/2,phi,dx,dz,nlx,nlz,Nx,Nz);
figure;
polarplot(phi,rho);   %wants input in rad
strtheta=num2str(rad2deg(th0));
if(nlx==0.5)
    title({'\textbf{H-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{\lambda}{2}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);
else
    title({'\textbf{H-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{3\lambda}{4}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);  
end
hold on;
end