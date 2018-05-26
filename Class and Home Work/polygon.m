%Homework 3/20 Problem 2
%I was slightly unsure of how to do this, so I did check on the mathworks
%forums to find some of the equations

%First, I create the function and format the output
function output= polygon(sides)
%Next I define the angles that I would like, in terms of our input of sides
angles = 2*pi./sides;

%This part took a bit of trial and error. I define the rho, but for some
%reason, if I leave the second part as just sides, there is one fewer side,
%so I add one. 
r = ones(1,sides+1);

%Now I define theta
theta = 0:angles:2*pi;

%Finally, I create a polar plot, which should yield a polygon. 
polar(theta, r)
end
