
H_plane(0.5,0.5,0,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.5,0.5,0,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 


H_plane(0.5,0.5,pi/6,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.5,0.5,pi/6,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 


H_plane(0.5,0.5,pi/3,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.5,0.5,pi/3,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 

H_plane(0.5,0.5,pi/2,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.5,0.5,pi/2,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 





H_plane(0.75,0.75,0,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.75,0.75,0,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 


H_plane(0.75,0.75,pi/6,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.75,0.75,pi/6,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 


H_plane(0.75,0.75,pi/3,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.75,0.75,pi/3,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 

H_plane(0.75,0.75,pi/2,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 
E_plane(0.75,0.75,pi/2,16,12);
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperPosition', [0 0 20 18]); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b erothma

Stereo_Plot(0.5,0.5,0,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

Stereo_Plot(0.5,0.5,pi/6,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

Stereo_Plot(0.5,0.5,pi/3,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

Stereo_Plot(0.5,0.5,pi/2,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')


Stereo_Plot(0.75,0.75,0,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 1\a', 's_q_0'), 'epsc');
Stereo_Plot(0.75,0.75,pi/6,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 1\a', 's_q_30'), 'epsc');
Stereo_Plot(0.75,0.75,pi/3,16,12);
axis equal

xlabel('x');
ylabel('y')
zlabel('z')

% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 1\a', 's_q_60'), 'epsc');
Stereo_Plot(0.75,0.75,pi/2,16,12);
axis equal
xlabel('x');
ylabel('y')
zlabel('z')

% saveas(gcf, fullfile('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\1η εργασία\Thema 1\a', 's_q_90'), 'epsc');

% d erothma
D0=Directivity(0.5,0.5,0,16,12);
D30=Directivity(0.5,0.5,pi/6,16,12);
D60=Directivity(0.5,0.5,pi/3,16,12);
D90=Directivity(0.5,0.5,pi/2,16,12);

%e erothma
hansen_woodyard

