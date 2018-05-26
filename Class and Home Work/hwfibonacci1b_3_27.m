%Homework 3/27 Problem 1b: Golden Ratio

%Allow the user to define the numbers in the sequence
x(1)=input('Enter the first number of the sequence\n');
x(2)=input('Enter the second number of the sequence\n');

%The next number in the sequence is 3
k=3;
%Define the function x(k) using the Fibonacci equation
x(k)=x(k-1)+x(k-2);

%Create a while loop that will stop the iterations when the difference
%between the ratios approaches 0.001
while abs(x(k)/x(k-1) - x(k-1)/x(k-2))>0.001
    %Define k=k+1 so that k will increase by one with each iteration
    k=k+1;
    %Put in the function x(k) again, this time in the loop
    x(k)=x(k-1)+x(k-2);
end

%Display the value of x- again as a column because of preference
x'