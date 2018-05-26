polyn1=polyval(polyfit(box1day1time,q1(1:length(box1day1time)),4),box1day1time);
plot(box1day1time,polyn1)
legend('Experimental','Poly Fit')

subplot(2,1,2)
plot(box1day2time,q1(1:length(box1day2time)))

hold on
polyn12=polyval(polyfit(box1day2time,q1(1:length(box1day2time)),4),box1day2time);
plot(box1day2time,polyn12)