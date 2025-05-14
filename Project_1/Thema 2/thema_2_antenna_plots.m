function thema_2_antenna_plots(hnl,th0)
rnl=50;
theta=linspace(0.001,pi-0.001,1000);
r1nl=sqrt(hnl^2+rnl^2-2*hnl*rnl*sin(theta));
r2nl=sqrt(hnl^2+rnl^2+2*hnl*rnl*sin(theta));
theta1=acos(rnl*cos(theta)./r1nl);
theta2=acos(rnl*cos(theta)./r2nl);
E1=cos(0.5*pi*cos(theta-th0))./sin(theta-th0).*exp(-1j*2*pi*r1nl)./r1nl;
E2=-cos(0.5*pi*cos(theta+th0))./sin(theta+th0).*exp(-1j*2*pi*r2nl)./r2nl;
Er=abs(E1.*sin(theta-theta1)+E2.*sin(theta-theta2));
Etheta=abs(E1.*cos(theta-theta1)+E2.*cos(theta-theta2)); %2.a.1
% Etheta=abs(cos(0.5*pi*cos(theta-th0))./sin(theta-th0).*exp(-1j*2*pi*r1nl)/rnl-cos(0.5*pi*cos(theta+th0))./sin(theta+th0).*exp(-1j*2*pi*r2nl)./rnl);
% 2.a.2
mean_Er_Etheta_distance=mean(abs(Er./Etheta));
Er=Er/max(Etheta);
Etheta=Etheta/max(Etheta);
figure;
ax1 = polaraxes;
% polarplot(ax1,theta,Etheta,theta,Er); 
%legend('Eθ','Εr')
polarplot(ax1,theta,Etheta); 
ax1.ThetaZeroLocation = 'top';
ax1.ThetaDir = 'clockwise'; 
hold on;
end