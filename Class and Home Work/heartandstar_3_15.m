%Homework 3/15 Problem 2 parts c and d: Polar graphs

%I will create both a basic cardioid graph and a graph of a 6-pointed star
%First, the cardioid graph
theta= 0:0.01:2*pi; %I first define my range for theta
rcard= 1-sin(theta); %Then I enter my equation for the cardioid graph
%I obtained the equation from mathworld.wolfram.com/heartcurve
%Now I use the polar command to graph the equation, formatting it as a
%solid red line. 
polar(theta, rcard, '-r') 
hold on %I want to keep this graph as I move onto the next part

%Now I move to the six-pointed star 
%I define a new range for my thetas for this equation
tstar=[pi/6:2*pi/3:4*pi]; 
rstar= ones(1,6); %Now I define my rho values
%Now I use a polar graph. This creates one triangle. I format it as a solid
%blue line
polar(tstar,rstar, 'b') 
%I use the polar function again, but this time I use negative tstar in
%order to invert the triangle, thus creating two overlapping triangles that
%create a 6-pointed star
polar(-tstar,rstar,'b') 
title('Heart and Star Plots')