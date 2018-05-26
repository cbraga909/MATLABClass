%Homework 4/12: Chemical Processing

%After rearranging the equation by hand, these are the coefficients of the
%variables mtops, mbottom, and x, respectively
A=[.2 .65 0; .35 .25 -100; .45 .1 100];
%And the constant value solution to each equation 
B=[50; 0; 50];

%Use left division to solve for mtops, mbottom, and x
solution=A\B;

%Create table for solutions
names={'mtops'; 'mbottom'; 'x'}
answer=table(solution, 'RowNames', names)


