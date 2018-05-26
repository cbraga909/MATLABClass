box3day1time=box3time48(box3time48<=24);
box3day2time=box3time48(box3time48>24);

box3day1temp1=box3temp148(box3time48<=24);
box3day2temp1=box3temp148(box3time48>24);

box3day1temp2=box3temp248(box3time48<=24);
box3day2temp2=box3temp248(box3time48>24);

subplot(2,2,1)
plot(box1day1time,box3day1temp1)
title('Box 3 Day 1 Temp 1'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,2)
plot(box3day2time, box3day2temp1)
title('Box 3 Day 2 Temp 1'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,3)
plot(box3day1time,box3day1temp2)
title('Box 3 Day 1 Temp 2'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,4)
plot(box3day2time, box3day2temp2)
title('Box 3 Day 2 Temp 2'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

box3day1maxtemp1=max(box3day1temp1);
box3day1mintemp1=min(box3day1temp1);
box3day1maxtemp2=max(box3day1temp2);
box3day1mintemp2=min(box3day1temp2);
box3day2maxtemp1=max(box3day2temp1);
box3day2mintemp1=min(box3day2temp1);
box3day2maxtemp2=max(box3day2temp2);
box3day2mintemp2=min(box3day2temp2);

%%
plot(box3time48,box3temp148,box3time48,box3temp248)
title('Box 2 Temperature vs. Time: Low Resolution'),xlabel('Time, hours'),ylabel('Temperature, Celcius')
legend('Temperature Probe 1','Temperature Probe 2')

%% Incident Energy
box3avgtemps=(box3temp148+box3temp248)/2;
box3timemax1=box3time48(box3avgtemps<=max(box3avgtemps));
box3tempmax1=box3avgtemps(box3avgtemps<=max(box3avgtemps));

%Using measurements of length, width, and height, and multiplying by
%0.0254^3 to convert to meters
volume3=24*24*23*(0.0254^3);

%The density of air is dependent on the temperature. I interpolated data
%from engineeringtoolbox.com to find the densities at various temperatures
densitydatatemps=[-40 -20 0 5 10 15 20 25 30 40 50 60 70 80 90 100 200 300 400 500 1000];
densitydata=[1.514 1.395 1.293 1.269 1.247 1.225 1.204 1.184 1.165 1.127 1.109 1.060 1.029 0.9996 0.9721 0.9461 0.7461 0.6159 0.5243 0.4565 0.2772];

expdensity3=interp1(densitydatatemps,densitydata,box3avgtemps,'spline');

%The specific heat for air at constant volume is 0.718 kJ/kg*K
c=0.718;

%Mass of air in the box is density over volume
mair3=expdensity3./volume3;

%Temperature change
tempchange3=box3avgtemps-box3avgtemps(1);

%Energy
q3=mair3.*c.*tempchange3;


hold on
plot(box3time48,q3)


