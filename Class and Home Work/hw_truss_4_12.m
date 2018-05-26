%Homework 4/12: Statics

%Given values of theta
theta1=45;
theta2=65;

%X and Y component of applied force
F1x=1000*cosd(30);
F1y=1000*sind(30);

%All 3 forces separated into x and y components yields 6 equations. Sum of
%all forces at each node is 0
A=[-cosd(theta1), cosd(theta2), 0 0 0 0; -sind(theta1), sind(theta2), 0 0 0 0; ...
    cosd(theta1), 0 1 1 0 0; sind(theta1), 0 0 0 1 0;...
    0, -cosd(theta2), -1 0 0 0; 0, sind(theta2), 0 0 0 1];

%The sum of the x components of F1 and F2 at node 1 must be equal to
%negative F1x, since they must counteract the applied force. The same
%principle applies to the y component
B=[-F1x; -F1y; 0; 0; 0; 0];

%Using left division to solve
x=A\B