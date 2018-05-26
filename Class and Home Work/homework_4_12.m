%Homework 4/12: Solving Linear Systems of Equations

%Inputting the equations for unknowns
A=[3 4 2 -1 1 7 1; 2 -2 3 -4 5 2 8; 1 2 3 1 2 4 6; 5 10 4 3 9 -2 1; 3 2 -2 -4 -5 -6 7;...
    -2 9 1 3 -3 5 1; 1 -2 -8 4 2 4 5];
%Inputting the solutions for each equation
B=[42; 32; 12; -5; 10; 18; 17];

%Time inverse function
tic
inv(A)*B
toc

%Time left division
tic
A\B
toc