%Homework 3/22 Problem 1: Height of a Rocket
%Define time vector
t=[0:2:100];
%Height of a rocket equation
height=2.13*t.^2-0.0013*t.^4+ 0.000034*t.^4.751;
%Create a vector of the time values for when the height is greater than 0
%The last time value is the closest to when the height is 0
timehit=t(find(height>0))
%Find the maximum height of the rocket
mh=max(height)
%Plot the graph of height vs. Time
plot(t, height, '-k')
%Label graph
title('Height vs Time Rocket'), xlabel('Time, seconds'), ylabel('Height, meters')
%Set the axes, being sure to limit the minimum y axis value to 0, since we
%don't need the values after that since a y value of 0 indicates that the
%rocket has returned to the ground
axis ([0 100 0 mh+100])




