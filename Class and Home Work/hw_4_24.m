%Homework 4/24

%Problem 1: Solving Symbollically
%Input formulat for pendulum symbolically
pend=sym('2*pi*f=sqrt((m*g*L)/(I))');
%Solve for L
L=solve(pend,'L')

%%
%Problem 2: Projectile Motion

%Horizontal distance
dx=sym('v0*t*cos(a)');
%Vertical distance
dy=sym('v0*t*sin(a)-0.5*g*t^2');

%Substitute known values in
x=subs(dx,{'a','v0','g'},{pi/4, 100, 9.8});
y=subs(dy,{'a','v0','g'},{pi/4, 100, 9.8});
%Plot x on x axis and y on y axis for time 0 to 20 seconds
ezplot(x,y,[0 20])

%%
%Problem 3: Weather Balloon
%Equation for altitude
h=sym('-0.12*t^4+12*t^3-380*t^2+4100*t+220');
%Formula for velocity
velocity=diff(h,'t');
%Formula for acceleration using velocity formula
acceleration=diff(velocity,'t');

%Solve for t
times=double(solve(h));
k=1;
while k<=4
    if isreal(times(k))==true && times(k)>0==true
        time=times(k) %Only display the time if it is real and positive
    end
    k=k+1;
end

%Plot altitude, velocity, and acceleration
subplot(2,2,1)
ezplot(h,[0 time])
title('Altitude vs. Time'),xlabel('Time, seconds'),ylabel('Altitude, meters')

subplot(2,2,2)
ezplot(velocity,[0 time])
title('Velocity vs. Time'), xlabel('Time, seconds'),ylabel('Velocity, m/s')

subplot(2,2,3)
ezplot(acceleration, [0 time])
title('Acceleration vs. Time'), xlabel('Time, seconds'),ylabel('Acceleration, m/s^2')

%Find the times where the velocity is 0
tzero=solve(velocity);
%Find the corresponding heights
heights=subs(h,'t',tzero);
%Find the maximum height
maxheight=max(heights)

%%
%Problem 4: Spring Problem

%Create symbolic variables
syms('x','n')
%Create equation to find work
w=int(20*x,0,'n-1')

%Solve for work when the length is 2 feet
work=subs(w,'n',2)

%Solve for the length when the work is 25 lbf
n1=double(solve(w==25,n));

%The integral involves a squared value, which means we must find the
%positive real length 
k=1;
while k<3
    if isreal(n1(k))==true && n1(k)>0
        n=n1(k)
    end
    k=k+1;
end

%%
%Problem 5: Trigonometric Function

%Symbolic variable
syms('x')

%Find the integral of this function
answer=int(tan(x))

%Convert to matlab function
newfunc=matlabFunction(answer)

%Plot function over interval -5 to 5
fplot(newfunc,[-5 5])




