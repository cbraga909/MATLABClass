%Homework 3/27 Problem 2: Halley's Algorithm

%Create a function with two inputs of initial_guess and the criterion
function output=my_sqrt(initial_guess,criterion)
%Ask the user for which number they would like to find the approximate
%square root of
A=input('Enter the number you want to approximate the square root of\n');
%Setting xo as initial_guess to make it easier to type functions
xo=initial_guess;

%Equations for y value dependent on xo and A
y=(1/A)*xo^2;
%Equation for the new x
xn=(xo/8)*(15-y*(10-3*y));

%While loop that will stop the function when the absolute value of the
%difference between xn and xo is no longer less than or equal to the
%criterion
while abs(xn-xo)<=criterion
    %Set xn as xn+1 so that xn will increase with each iteration
    xn=xn+1;
    %Input formula for xn again
    xn=(xo/8)*(15-y*(10-3*y));
end %End while loop
%Set output equal to xn
output=xn;
end %End function
