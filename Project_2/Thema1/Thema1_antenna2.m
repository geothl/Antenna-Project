lamda=0.25;
d=lamda/20;%distance between cones
theta_0=pi/6;
l=lamda/4;%wire on a single cone
r=lamda/200;%diameter
r=0.5*r;%radius
PHI=[pi/6:pi/3:11*pi/6 pi/6:pi/3:11*pi/6];
THETA=[theta_0*ones(1,6) (pi-theta_0)*ones(1,6)];
wire_source=[-lamda/40 lamda/40];
x=Spherical_system_point(l,PHI,THETA,d);


tag=1:1:12;
segments=9*ones(1,12);
radius=r*ones(1,12);
A = [tag; segments;x{1};x{2};x{3};x{4};x{5};x{6};radius];
delete('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\2η εργασία\NEC_THEMA_1_1.NEC');
fileID = fopen('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\2η εργασία\NEC_THEMA_1_1.NEC','wt');
fprintf(fileID,'CM Thema1\n');
fprintf(fileID,'CE\n');

fprintf(fileID,'GW\t%d\t%d\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\n',A);
fprintf(fileID,'GW\t%d\t%d\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.8f\n',[13 1 0 0 wire_source(1) 0 0 wire_source(2) r]);
fprintf(fileID,'EX\t%d\t%d\t% d\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.6f\t% 3.8f\n',[0 13 1 0 1 0 0 0]);
fclose(fileID);