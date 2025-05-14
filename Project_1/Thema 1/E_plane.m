function  rho= E_plane(nlx,nlz,th0,Nx,Nz)
dz=0;
dx=-nlx*2*pi*sin(th0);
theta=linspace(0.01,pi-0.01,1000);
theta_pos=theta;
theta_neg=theta+pi;
rho=abs((cos(pi/2*cos(theta))./sin(theta))).*A(theta,pi/2-th0,dx,dz,nlx,nlz,Nx,Nz);
rhoneg=abs((cos(pi/2*cos(theta))./sin(theta))).*A(theta,3*pi/2-th0,dx,dz,nlx,nlz,Nx,Nz);
rho=[rho,rhoneg];
theta=[theta_pos,theta_neg];
figure;
ax1 = polaraxes;
polarplot(ax1,theta,rho);   %wants input in rad
ax1.ThetaZeroLocation = 'top';
ax1.ThetaDir = 'clockwise'; 
strtheta=num2str(rad2deg(th0));
if(nlx==0.5)
    title({'\textbf{E-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{\lambda}{2}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);
else
    title({'\textbf{E-Plane radiation pattern for} dx=dz=\fontsize{15}{0}\selectfont$\frac{3\lambda}{4}$', ['\fontsize{15}{0}\selectfont$\theta=',strtheta,'$ ' ]},'interpreter','latex','FontSize', 14);  
end
hold on;
end