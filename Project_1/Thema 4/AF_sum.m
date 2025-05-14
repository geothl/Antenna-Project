function sum= AF_sum(p)
theta=0:pi/180:pi;
N=10;
l=1;
d=l/2;
dp=0;
k=2*pi/l;
% AF=abs(p(1)*(exp(-1j*4.5*k*d*cos(theta))+exp(1j*4.5*k*d*cos(theta)))+p(2)*(exp(-1j*3.5*k*d*cos(theta))+exp(1j*3.5*k*d*cos(theta)))+p(3)*(exp(-1j*2.5*k*d*cos(theta))+exp(1j*2.5*k*d*cos(theta))) ...
%     +p(4)*(exp(-1j*1.5*k*d*cos(theta))+exp(1j*1.5*k*d*cos(theta)))+p(5)*(exp(-1j*0.5*k*d*cos(theta))+exp(1j*0.5*k*d*cos(theta))));
AF=abs(2*( p(1)*cos(4.5*k*d*cos(theta))+p(2)*cos(3.5*k*d*cos(theta))+p(3)*cos(2.5*k*d*cos(theta))+p(4)*cos(1.5*k*d*cos(theta))+p(5)*cos(0.5*k*d*cos(theta))));
sum=0;
for i=1:71
   sum=sum+AF(i); 
end    
end