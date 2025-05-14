function Zm = Zm_calc(seg)
Zs=73.1+1i*42.5;
fid = fopen('C:\4nec2\out\Thema3out.out', 'rt');
text = fileread('C:\4nec2\out\Thema3out.out');
desired_string = "CURRENTS AND LOCATION";
% count_string = count(text,desired_string );
% Data = textscan(fid, '%s', 'delimiter', '\n', 'whitespace', '');
% C = Data{1};
% IndexC = strfind(C, desired_string);
% Index = find(~cellfun('isempty', IndexC), 1);
search_status=false;
while ~feof(fid)
    fl=fgetl(fid);
    foundCurr=contains(fl, desired_string);
    if(foundCurr==true)
        search_status=true;
        break
    end
end
if(search_status==false)
    Descr('error');
    quit;
end


for i=1:6+floor(seg/2)
    fgetl(fid);
end
f1=fgetl(fid);
C = textscan(f1,'%f');
C=C{1};
f1r=C(7);
f1im=C(8);
% f1r=str2double(f1r);
% f1im=str2double(f1im);
for i=1:2*floor(seg/2)
    fgetl(fid);
end
f2=fgetl(fid);
C = textscan(f2,'%f');
C=C{1};
f2r=C(7);
f2im=C(8);
% f2r=str2double(f2r);
% f2im=str2double(f2im);
fclose(fid);

I1=f1r+1i*f1im;
I2=f2r+1i*f2im;
curr_ratio=I2/I1;
Zm=-Zs*curr_ratio;

end