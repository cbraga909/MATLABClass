%We can use left division to solve this system of equations. However, our
%solution comes up as NaN, meaning there is no solution. Having one value
%of f would provide enough information to solve for f1, f2, f3, and f4.

a=[1 1 0 0; 0 0 1 1; 0 1 1 0; 1 0 0 1];
b=[500; 800; 1000; 300];
solution=a\b

