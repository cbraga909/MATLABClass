%Homework 5/1
%% Context Example

%Variables given
s=[55 80 105 130 155 180 205 230 255 280 305 330 355 380 405 430 455 480 505 543];
o=[52.5 88 87 78.5 69.5 59 50.5 52.5 65 78 79.5 69 58.5 50 40.5 29.5 27 46 68 71];

area=trapz(s,o)

%% Numerical Integration Problem 1
clear
clc

%Define x vector
x=[-1:0.1:1];

%Define equation of y
y=x.^3 +2*x.^2-x+3;

trapint=trapz(x,y) %Integral using trapz
quadint=quad('x.^3 +2*x.^2-x+3',-1,1) %Integral using quad
quadlint=quadl('x.^3 +2*x.^2-x+3',-1,1) %Integral using quadl

%% Numerical Integration Problem 2

clear
clc

%Define dydt from given information
dydt=@(t,y) t.^2+y;
%Solve from 0 to 1 using ode45
[t1,y1]=ode45(dydt,[0,1],0);
%Display results in table
table=[t1 y1]

%% Numerical Integration Problem 3

clear
clc

%Solve using ode, calling user-created function to solve for x= 0 to 1 and
%h1=0, h2=0, and h3= 0.332 when x=0
ode45(@threeeqs,[0,1],[0,0,0.332])
