clear;
lamda=3;
s1=0.05*lamda;
std=0.05*lamda;
sth=std;
s2d=2*lamda;
s2h=lamda;
l=lamda/2;
r=lamda/200;
seg=9;
stepd=s1:std:s2d;
steph=s1:sth:s2h;
Zm=zeros(length(steph),length(stepd));
countd=0;
counth=0;
for sh=steph
    counth=counth+1;
    countd=0;
    for sd=stepd
        countd=countd+1;
        fileID = fopen('C:\4nec2\out\test_write.nec','wt');
        fprintf(fileID,'CM\n');
        fprintf(fileID,'CE\n');
        fprintf(fileID,'GW %d %d %3.2f %d %3.2f %3.2f %d %3.2f %3.4f\n',[1 seg 0 0 0 0 0 l r]);
        fprintf(fileID,'GW %d %d %3.2f %d %3.2f %3.2f %d %3.2f %3.4f\n',[2 seg sd 0 sh sd 0 sh+l r]);
        fprintf(fileID,'GE 0\n');
        fprintf(fileID,'GN -1\n');
        fprintf(fileID,'EK\n');
        fprintf(fileID,'EX %d %d %d %d %d %d %d\n',[0 1 5 0 1 0 0]);
        fprintf(fileID,'FR %d %d %d %d %d %d\n',[0 0 0 0 100 0]);
        fprintf(fileID,'RP %d %d %d %d %d %d %d %d\n',[0 37 73 1003 -180 0 5 5]);
        fprintf(fileID,'EN');
        fclose(fileID);
        cd('C:\Users\george theologis\Desktop\ΠΑΝΕΠΙΣΤΗΜΙΟ\7ο ΕΞΑΜΗΝΟ\Κεραίες και Δίαδοση\2η εργασία\Thema3');
        system('4nec2.bat');
        Zm(counth,countd)=Zm_calc(seg);
    end
end
[d,h] = meshgrid(stepd,steph);
figure;
surf(d,h,real(Zm)); 
title(strcat("Rm of half wave dipoles in echelon"));
xlabel('d')
ylabel('h')
zlabel('Rm')
colorbar
figure;
surf(d,h,imag(Zm)); 
title(strcat("Χm of half wave dipoles in echelon"));
xlabel('d')
ylabel('h')
zlabel('Xm')
colorbar

figure;
[C,v]=contour(d,h,real(Zm),min(min(real(Zm))):5:max(max(real(Zm))));
clabel(C,v,min(min(real(Zm))):5:max(max(real(Zm))));
title(strcat("Rm of half wave dipoles in echelon"));
xlabel('d')
ylabel('h')
figure;
[C,v]=contour(d,h,imag(Zm),min(min(imag(Zm))):5:max(max(imag(Zm))));
clabel(C,v,min(min(imag(Zm))):5:max(max(imag(Zm))));
title(strcat("Χm of half wave dipoles in echelon"));
xlabel('d')
ylabel('h')