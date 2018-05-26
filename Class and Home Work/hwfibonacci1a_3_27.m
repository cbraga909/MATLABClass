%Homework 3/27 Problem 1a: Fibonacci sequence

%Ask for the first two numbers in the sequence
num1=input('Enter the first number of the sequence\n');
num2=input('Enter the second number of the sequence\n');
%Ask the user for how many elements they would like to find
howmany=input('How any elements would you like to find?\n');

%Define the first two values and create a function
fibseq(1)=num1;
fibseq(2)=num2;

%Create for loop and define the index as 3 until the number of elements
%specified by the user
for n=3:howmany;
    %Write formula for fibonacci sequence
    fibseq(n)=fibseq(n-1)+fibseq(n-2);
end
%Create a polar graph with the element number as the angle and the values
%of the sequence as rho
polar([1:howmany],fibseq)

%Display the Fibonacci sequence values. I transposed it into a single
%column due to personal preference, since I find it to be more readable
fibseq'
