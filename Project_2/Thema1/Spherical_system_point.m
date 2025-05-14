function point = Spherical_system_point(r,phi,theta,sr)
x2=r*cos(phi).*sin(theta);
y2=r*sin(phi).*sin(theta);
sign_of_z=cos(theta)./(abs(cos(theta)));
z2=0.5*sr*sign_of_z+r*cos(theta);
x1=0+0*cos(theta); %just so it will be returned 12 times
y1=0+0*cos(theta);
z1=0.5*sr*sign_of_z;
point={x1,y1,z1,x2,y2,z2};
end