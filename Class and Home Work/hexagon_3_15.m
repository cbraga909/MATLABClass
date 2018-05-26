%Homework 3/15 Problem 2 Part E: Polar graphs

%In this last part, I will be plotting a hexagon. I obtained this
%information by looking online at MATLAB forums
thex= 0:pi/3:2*pi; %First, I define my theta values 
rhex= ones(1,7); %Next, i define my rho values
%Finally, I use the polar function, formatting this graph as a solid green
%line. 
polar(thex,rhex, 'g') 

%And of course, I add a title
title('Hexagon')