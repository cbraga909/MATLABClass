%Class Example: Water in a Culvert

%Height in feet
h=[0 1.7 1.95 2.6 2.92 4.04 5.24];

%Flow in feet^3 per second
f=[0 2.6 3.6 4.03 6.45 11.22 30.61];

%Create vector with smaller intervals
moreh=[0:0.2:5.4];

%Find the flow evaluated at the new vector of heights
f1=polyval(polyfit(h,f,1),moreh);
f2=polyval(polyfit(h,f,2),moreh);
f3=polyval(polyfit(h,f,3),moreh);

%Plot values
plot(h,f,'o',moreh,f1,moreh,f2,moreh,f3)
title('Flow vs. Height'),xlabel('Height, feet'),ylabel('Flow, ft^3/s')
