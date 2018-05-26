%Box Data from May 3rd

%% Box 1 Data 

load eq2data

box1data=table(box1time,box1temp1,box1temp2)

%% Box 1 Plot

load eq2data

%Plot probe data for Box 1
plot(box1time,box1temp1,box1time,box1temp2)
title('Temperature vs. Time Box 1, High Resolution'),xlabel('Time, minutes'),ylabel('Temperature, Celsius')
legend('Temperature Probe 1','Temperature Probe 2')

%% Box 3 Data 

load eq2data

box3data=table(box3time,box3temp1,box3temp2)

%% Box 3 Plot

load eq2data

%Plot probe data for Box 3
plot(box3time,box3temp1,box3time,box3temp2)
title('Temperature vs. Time Box 3'),xlabel('Time, minutes'),ylabel('Temperature, Celsius')
legend('Temperature Probe 1','Temperature Probe 2')

%% Daily Average Temperatures Anaheim

load eq2data

%I chose Anaheim because the longitude was closest to Walnut (-117.843 for
%Anaheim, -117.845 for Walnut)

%The average temperatures were not logged properly, so I had to find this
%myself
anaheimaverage=(anaheimmax+anaheimmin)./2;

%Plotting with no x value defined
plot(anaheimaverage)
%To plot them all on one plot, I use hold on command
hold on
plot(anaheimmax)
plot(anaheimmin)
hold off

%Label plot
legend('Average Temperature','Maximum Temperature','Minimum Temperature')
title('Anaheim Daily Temperatures'), ylabel('Temperature, Celcius')

%% Daily Average Temperatures Malibu Hills

load eq2data

%Malibu Hills was chosen because the latitude was closest to Walnut from
%the list given (34.0477 for Walnut, 34.0583 for Malibu Hills

%For this one, I create an x vector of values for plotting
dates=1:length(malibuhillsmax);

%Plotting everything with dates on the x axis
plot(dates,malibuhillsavg,dates,malibuhillsmax,dates,malibuhillsmin)

%Label Plots
title('Malibu Hills Daily Temperatures'),ylabel('Temperature, Celcius')
legend('Average Temperature','Maximum Temperature','Minimum Temperature')
