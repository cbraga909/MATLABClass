%Low Resolution
box1day1time=box1time48(box1time48<=24);
box1day2time=box1time48(box1time48>24);

box1day1temp1=box1temp148(box1time48<=24);
box1day2temp1=box1temp148(box1time48>24);

box1day1temp2=box1temp248(box1time48<=24);
box1day2temp2=box1temp248(box1time48>24);

subplot(2,2,1)
plot(box1day1time,box1day1temp1)
title('Box 1 Day 1 Temp 1'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,2)
plot(box1day2time, box1day2temp1)
title('Box 1 Day 2 Temp 1'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,3)
plot(box1day1time,box1day1temp2)
title('Box 1 Day 1 Temp 2'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

subplot(2,2,4)
plot(box1day2time, box1day2temp2)
title('Box 1 Day 2 Temp 2'), xlabel('Time, hours'),ylabel('Temperature, Celcius')

box1day1maxtemp1=max(box1day1temp1);
box1day1mintemp1=min(box1day1temp1);
box1day1maxtemp2=max(box1day1temp2);
box1day1mintemp2=min(box1day1temp2);
box1day2maxtemp1=max(box1day2temp1);
box1day2mintemp1=min(box1day2temp1);
box1day2maxtemp2=max(box1day2temp2);
box1day2mintemp2=min(box1day2temp2);

box1avgtemps=(box1temp148+box1temp248)/2;
box1day1avgtemps=box1avgtemps(box1time48<=24);
box1day2avgtemps=box1avgtemps(box1time48>24);

%%
subplot(1,1,1)
plot(box1time48,box1temp148,box1time48,box1temp248,box1time48,box1avgtemps)
title('Box 1 Temperatures vs. Time: Low Resolution'),xlabel('Time, hours'),ylabel('Temperature, Celcius')
legend('Temperature Probe 1','Temperature Probe 2','Average')

%% Incident Energy Low-Resolution Box 1 

%Using measurements of length, width, and height, and multiplying by
%0.0254^3 to convert to meters
volume1=21*24*24*(0.0254^3);

%The density of air is dependent on the temperature. I interpolated data
%from engineeringtoolbox.com to find the densities at various temperatures
densitydatatemps=[-40 -20 0 5 10 15 20 25 30 40 50 60 70 80 90 100 200 300 400 500 1000];
densitydata=[1.514 1.395 1.293 1.269 1.247 1.225 1.204 1.184 1.165 1.127 1.109 1.060 1.029 0.9996 0.9721 0.9461 0.7461 0.6159 0.5243 0.4565 0.2772];

expdensity=interp1(densitydatatemps,densitydata,(box1avgtemps/length(box1avgtemps)),'spline');
expdensity1=expdensity(1,1);

%The specific heat for air at constant volume is 0.718 kJ/kg*K
c=0.718;

%Mass of air in the box is density over volume
mair1=expdensity1/volume1;

%Temperature change
tempchange1=box1avgtemps-box1avgtemps(1);

%Energy
q1=mair1.*c.*tempchange1;

plot(box1time48,q1)
title('Incident Energy Box 1 Low Resolution'),xlabel('Time (hours)'),ylabel('Energy (kJ)')



%% High Resolution
box1avghr=(box1temp1+box1temp2)/2;
box1_1hr_maxtemp=max(box1avghr)
box1_1hr_mintemp=min(box1avghr)
plot(box1time,box1avghr)

%% One year projection


