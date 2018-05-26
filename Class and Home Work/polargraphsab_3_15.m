%Homework 3/15 Problem 2 parts a and b: Creating graphs in polar coordinates

%Define range of theta
theta = 0:0.01:2*pi;
%Create equation for first graph
r = sin(3*theta);
%Plot first polar graph
polar(theta, r)

%Hold on, to overlay next graph
hold on
%Create equation for second graph
r2 = 0.5*sin(4*theta);
%Plot second polar graph
polar(theta, r2, '--r')

title('Flower Graphs')