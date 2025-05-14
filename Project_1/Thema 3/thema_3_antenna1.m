clear;
%%%%%%%%%%%%%%%%%%% a
dnl=linspace(0,3,1000);
Zm=parallel_mutual_impedence(dnl);
figure;
plot(dnl,real(Zm),dnl,imag(Zm));
hold on;
plot(dnl,zeros(length(dnl)),'.');
legend('R21m','X21m')
xlabel('d/λ')
ylabel('Mutual Impedance Z21 (ohms)')
title('Mutual Impedance Z21 between half-wavelength parallel dipoles with distance d')
hold on;
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 3', '3_1'), 'epsc');




%%%%%%%%% b 
clear;
Zs=73.1+1j*42.5;
Zm1=parallel_mutual_impedence(0.25);
Zm2=parallel_mutual_impedence(0.5);
current_ratio=-Zm1/(Zs+Zm2);
Zin=2*Zm1*current_ratio+Zs;
phi=linspace(0,2*pi,1000);
A=abs(2*current_ratio*cos(0.5*pi*cos(phi))+1);
% A=abs(current_ratio*(exp(1j*0.5*pi*cos(phi))+exp(-1j*0.5*pi*cos(phi)))+1);
figure;
polarplot(phi,A);   %wants input in rad
title('Horizontal Radiaton Pattern')
hold on;

%%%%%%%%% c 
clear;
dnl=linspace(0,1,1000);
Gamma=reflectance_coefficient_thema3(dnl);
figure;
plot(dnl,Gamma);   %wants input in rad
xlabel('d/λ')
ylabel('|S11|','FontSize',12,'FontWeight','bold',"Rotation",0);
title('Reflection Coefficient')
hold on;
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 3', '3_3'), 'epsc');

%%%%%%%%% d

clear;
Zs=73.1+1j*42.5;
Z0=50;
dnl=0.001:0.01:1;
hnl=0.001:0.01:1;
Gamma=zeros(length(dnl),length(hnl));
Zin=zeros(length(dnl),length(hnl));
[dnl,hnl] = meshgrid(0.001:0.01:1,0.001:0.01:1);
den=(Zs -parallel_mutual_impedence(2*hnl)+parallel_mutual_impedence(2*dnl)-parallel_mutual_impedence(sqrt((2*hnl).^2+(2*dnl).^2)));
num=2*(parallel_mutual_impedence(dnl)-parallel_mutual_impedence(sqrt((2*hnl).^2+(dnl).^2))).^2;
Zin=Zs-parallel_mutual_impedence(2*hnl)-num./den;
Gamma=abs((Zin-Z0)./(Zin+Z0));
figure;
surf(dnl,hnl,Gamma); 
xlabel('d/λ')
ylabel('h/λ')
zlabel('|S11|')
title('Reflection coefficient |S11| for certain d,h')
figure;
[C,h] =contour(dnl,hnl,Gamma,[0.3 0.3 0.2 0.2 0.1 0.1 0.05 0.05]);
v = [0.1,0.2,0.3];
clabel(C,h,v)
xlabel('d/λ')
ylabel('h/λ')
title('Reflection coefficient |S11| for certain d,h')
hold on;

% % % Zs=73.1+1j*42.5;
% % % Z0=50;
% % % dnl=0.001:0.1:1;
% % % hnl=0.001:0.1:1;
% % % Gamma=zeros(length(dnl),length(hnl));
% % % Zin=zeros(length(dnl),length(hnl));
% % % for i=1:length(dnl)
% % %     for j=1:length(hnl)
% % %     A=[Zs-parallel_mutual_impedence(2*hnl(j)) parallel_mutual_impedence(2*dnl(i))-parallel_mutual_impedence(2*hnl(j)+2*dnl(i));
% % %          parallel_mutual_impedence(2*dnl(i))-parallel_mutual_impedence(2*hnl(j)+2*dnl(i)) Zs-parallel_mutual_impedence(4*dnl(i)+2*hnl(j)) ];
% % %     B=[parallel_mutual_impedence(2*hnl(j)+dnl(i))-parallel_mutual_impedence(dnl(i)); parallel_mutual_impedence(2*hnl(j)+3*dnl(i))-parallel_mutual_impedence(dnl(i));];
% % %     X = linsolve( A , B );
% % %     Zin(i,j)=(Zs-parallel_mutual_impedence(2*hnl(j)+2*dnl(i)))+X(1)*(parallel_mutual_impedence(dnl(i))-parallel_mutual_impedence(2*hnl(j)+dnl(i)))+X(2)*(parallel_mutual_impedence(dnl(i))-parallel_mutual_impedence(2*hnl(j)+3*dnl(i)));
% % %     Gamma(i,j)=abs((Zin(i,j)-Z0)/(Zin(i,j)+Z0));
% % %     end
% % % end
% % % [dnl,hnl] = meshgrid(0.001:0.1:1,0.001:0.1:1);
% % % figure;
% % % surf(dnl,hnl,Gamma); 
% % % hold on;
