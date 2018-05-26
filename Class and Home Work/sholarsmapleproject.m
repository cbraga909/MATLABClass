%% Math 181 Project 1: Problem 3

%In MATLAB, the subplot command creates two plots in one window
subplot(2,1,1)
%First I vary theta over the interval 0:2*pi to observe the behaviour of
%the graph
t=0:.01:2*pi;
%This is the expression that represents the curve
r=exp(cos(t))-2*cos(4*t)+(sin(t/12)).^5;
%Now, by using the polar function, I can plot the function over the
%interval 0:2*pi
polar(t,r)

%I observe that with the above interval, only one loop was created. I
%therefore multiply by 4 to yield 4 loops, thus reproducing the curve 
subplot(2,1,2)
t2=0:.01:8*pi;
r2=exp(cos(t2))-2*cos(4*t2)+(sin(t2/12)).^5;
polar(t2,r2)