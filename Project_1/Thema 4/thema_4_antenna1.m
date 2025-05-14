clear;
Obj_fun=@AF_sum;
lb=[1 1 1 1 1];
ub=[4 4 4 4 4];
nVal=5;
options = optimoptions("ga","MaxGenerations",1000,"PopulationSize",200,"MaxStallGenerations",500,"MaxStallTime",200,"PlotFcn","gaplotbestf");
[solution,objectiveValue] = ga(Obj_fun,nVal,[],[],[],[],lb,ub,[],[],options);
clearvars options

p=solution;
% p=[1,1.937047840234131,2.720261543327774,3.569544538278865,3.999999999367315];
pa=p;

theta=0:pi/180:pi;
N=10;
l=1;
d=l/2;
dp=0;
k=2*pi/l;
AF=abs(2*( p(1)*cos(4.5*k*d*cos(theta))+p(2)*cos(3.5*k*d*cos(theta))+p(3)*cos(2.5*k*d*cos(theta))+p(4)*cos(1.5*k*d*cos(theta))+p(5)*cos(0.5*k*d*cos(theta))));
figure;
ax1 = polaraxes;
polarplot(ax1,theta,AF/max(AF));   %wants input in rad
title('Vertical Normalized Radiaton Pattern');
ax1.ThetaZeroLocation = 'top';
ax1.ThetaDir = 'clockwise'; 
hold on;
figure;
plot(rad2deg(theta),AF/max(AF)); 
title('Vertical Normalized Radiaton Pattern');
xlabel('θ (degrees)','FontSize',12,'FontWeight','bold');
ylabel('|A|','FontSize',12,'FontWeight','bold',"Rotation",0);
% semilogy(rad2deg(theta),20*log10(AF/max(AF)));
hold on;
lbpl=60+find(AF(61:69)==min(AF(61:69))); 
ubpl=68+find(AF(69:80)==min(AF(69:80))); 
pleurikos=max(AF(lbpl:ubpl))/max(AF);
pleurikosDb=20*log10(pleurikos);




Obj_fun=@AF_sum_weight;
lb=[1 1 1 1 1];
ub=[4 4 4 4 4];
nVal=5;
options = optimoptions("ga","MaxGenerations",1000,"PopulationSize",200,"MaxStallGenerations",500,"MaxStallTime",200,"PlotFcn","gaplotbestf");
[solution,objectiveValue] = ga(Obj_fun,nVal,[],[],[],[],lb,ub,[],[],options);
clearvars options

p=solution;
% p=[1,1.687872618436813,2.684849503738406,3.529922366142273,3.999999986280917];
pb=p;


theta=0:pi/180:pi;
N=10;
l=1;
d=l/2;
dp=0;
k=2*pi/l;
AF=abs(2*( p(1)*cos(4.5*k*d*cos(theta))+p(2)*cos(3.5*k*d*cos(theta))+p(3)*cos(2.5*k*d*cos(theta))+p(4)*cos(1.5*k*d*cos(theta))+p(5)*cos(0.5*k*d*cos(theta))));
figure;
ax1 = polaraxes;
polarplot(ax1,theta,AF/max(AF));   %wants input in rad
title('Vertical Normalized Radiaton Pattern');
ax1.ThetaZeroLocation = 'top';
ax1.ThetaDir = 'clockwise'; 
hold on;
figure;
plot(rad2deg(theta),AF/max(AF)); 
title('Vertical Normalized Radiaton Pattern');
xlabel('θ (degrees)','FontSize',12,'FontWeight','bold');
ylabel('|A|','FontSize',12,'FontWeight','bold',"Rotation",0);
% semilogy(rad2deg(theta),20*log10(AF/max(AF)));
hold on;
lbpl=60+find(AF(61:69)==min(AF(61:69))); 
ubpl=68+find(AF(69:80)==min(AF(69:80))); 
pleurikos=max(AF(lbpl:ubpl))/max(AF);
pleurikosDb=20*log10(pleurikos);
pleurikosDb_all=20*log10(max(AF(1:ubpl))/max(AF));


Obj_fun=@D_optimize;
lb=[1 1 1 1 1];
ub=[4 4 4 4 4];
nVal=5;
options = optimoptions("ga","MaxGenerations",1000,"PopulationSize",200,"MaxStallGenerations",500,"MaxStallTime",200,"PlotFcn","gaplotbestf");
[solution,objectiveValue] = ga(Obj_fun,nVal,[],[],[],[],lb,ub,[],[],options);
clearvars options

p=solution;
pc=p;

