%Homework 3/15 Problem 1: Stress vs Strain
%Create a matrix of force values. Transpose matrix to make it vertical
Force=[0 1650 3400 5200 6850 7750 8650 9300 10100 10400]';
%Define area
Area=pi*0.2525^2;
%Create formula to solve for stress
stress=Force/Area

%Create matrix of lengths. Done using increments instead of manually
%inputting each value. Transpose matrices so they will be vertical and
%combine them vertically by using semicolon
lengths=[(2:0.002:2.01)'; (2.02:0.02:2.04)'; (2.08)';(2.12)']
%Create formula to solve for strain
strain=(lengths-2)/2

%Create a table relating stress to strain
stress_strain=[stress strain]
%Plot values, with strain on x-axis and stress on y, formatted as a solid
%black line with open circle markers
plot(strain, stress, '-ok')
%Label the axes
xlabel('Strain, in/in'), ylabel('Stress, psi')
%Title graph
title('Strain vs. Stress')