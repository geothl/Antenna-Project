clear;

%h=λ/4
thema_2_antenna_plots(0.25,0)
title('|Eθ| radiation pattern. h=λ/4 θ=0')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_q_0'), 'epsc');

thema_2_antenna_plots(0.25,pi/6)
title('|Eθ| radiation pattern. h=λ/4 θ=30')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_q_30'), 'epsc');

thema_2_antenna_plots(0.25,pi/3)
title('|Eθ| radiation pattern. h=λ/4 θ=60')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_q_60'), 'epsc');

thema_2_antenna_plots(0.25,pi/2)
title('|Eθ| radiation pattern. h=λ/4 θ=90')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_q_90'), 'epsc');


%h=λ/2

thema_2_antenna_plots(0.5,0)
title('|Eθ| radiation pattern. h=λ/2 θ=0')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_h_0'), 'epsc');

thema_2_antenna_plots(0.5,pi/6)
title('|Eθ| radiation pattern. h=λ/2 θ=30')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_h_30'), 'epsc');

thema_2_antenna_plots(0.5,pi/3)
title('|Eθ| radiation pattern. h=λ/2 θ=60')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_h_60'), 'epsc');

thema_2_antenna_plots(0.5,pi/2)
title('|Eθ| radiation pattern. h=λ/2 θ=90')
% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 2', '2_h_90'), 'epsc');

%thema 3

clear;
Obj_fun=@thema2_antenna_opt;
lb=0;
ub=pi/2;
nVal=1;
options = optimoptions("ga","MaxGenerations",1000,"PopulationSize",200,"MaxStallGenerations",500,"MaxStallTime",200,"PlotFcn","gaplotbestf");
[solution_opt,objectiveValue] = ga(Obj_fun,nVal,[],[],[],[],lb,ub,[],[],options);
clearvars options

syms x
f(x)=abs(cos(pi*0.5*sin(x))/cos(x));
eqn= abs(cos(pi*0.5*sin(x))/cos(x))==1;
% f=matlabFunction(f);
th0 = solve(eqn,x);
solution_solve=double(th0);


