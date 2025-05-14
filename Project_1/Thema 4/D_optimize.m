function D= D_optimize(p)
theta=0:pi/180:pi;
N=10;
l=1;
d=l/2;
dp=0;
k=2*pi/l;
p(6)=p(5);
p(7)=p(4);
p(8)=p(3);
p(9)=p(2);
p(10)=p(1);
num=0;
den=0;
for n=1:N
    num=num+p(n);
    for m=1:N
        den=den+p(n)*p(m)*sinc(k*d*(n-m)/pi);      %d phase=0  
    end
end
num=num^2;
%num=k*d*num; den xreiazetai ama kano sinc(x/pi)
D=-num/den;
end