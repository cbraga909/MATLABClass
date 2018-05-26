%Homework 4/26
%% Problem 1: Interpolation

%Enter given data
V=1:1:6; %Volume in m^3
P=[2494 1247 831 623 499 416]; %Pressure in kPa

%Linear interpolation to estimate pressure when volume is 3.8 ^3
linpress=interp1(V,P,3.8,'linear')
%Cubic spline to estimate pressure when volume is 3.8 m^3
splinepress=interp1(V,P,3.8,'spline')

%Linear interpolation to estimate volume when pressure is 1000 kPa
linvol=interp1(P,V,1000,'linear')
%Cubic spline to estimate volume when pressure is 1000 kPa
splinevol=interp1(P,V,1000,'spline')

%% Problem 2: Curve-Fitting (Part 1-Using Intervals of 1 m^3)

%Fit the data
first=polyfit(V,P,1);
second=polyfit(V,P,2);
third=polyfit(V,P,3);
fourth=polyfit(V,P,4);

%Find the pressure value for each polyfit, by finding the value of each
%polynomial evaluated at the volume
p1=polyval(first,V);
p2=polyval(second,V);
p3=polyval(third,V);
p4=polyval(fourth,V);

%Plot data
plot(V,P,'o',V,p1,V,p2,V,p3,V,p4)

%Label plot and data
legend('Given Data','First-Order','Second-Order','Third-Order','Fourth-Order');
title('Pressure vs. Volume'),xlabel('Volume (m^3)'),ylabel('Pressure (kPa)')

%% Problem 2: Curve-Fitting (Part 2-Using Intervals of 0.2 m^3)

%Create new vector of values for volume
vn=1:0.2:6;

%Find the new pressure value for each polyfit, by finding the value of each
%polynomial evaluated at the new volumes
p1n=polyval(first,vn);
p2n=polyval(second,vn);
p3n=polyval(third,vn);
p4n=polyval(fourth,vn);

%Plot these new functions
plot(V,P,'o',vn,p1n,vn,p2n,vn,p3n,vn,p4n)

%Label Graph
legend('Given Data','First-Order','Second-Order','Third-Order','Fourth-Order');
title('Pressure vs. Volume for More Volume Values'),xlabel('Volume (m^3)'),ylabel('Pressure (kPa)')

%The second plot is better, since the lines are much more smooth than in
%the first one

%% Problem 3: Curve-Fitting II

%Define givens
R=8.314; n=1;

%Use given information about the slope, which is equal to nRT
nRT=polyfit(1./V,P,1)
%Find the temperature
T=nRT./(n*R)

%Plot 1/V on the x axis and pressure on the y-axis
plot(1./V,P)
title('Ideal Gas Law'),xlabel('1/V'),ylabel('Pressure (kPa)')