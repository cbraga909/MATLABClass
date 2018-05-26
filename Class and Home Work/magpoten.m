%The function for the force, given by the curve fit of our graph
%The "sym" before the expression is because r is not defined yet. By using
%this, MATLAB will display the equation symbolically rather than attempting
%to evaluate it
F=sym('(1.78*10^-5)*(r^-2.59)')

%The function for U(r) is the integral of F(r), evaluated over negative
%infinity to r
%int is the function for an integral. It will find the integral of the
%function F with respect to r
U=-(int(F,'r'))

%Now we input our r values from part 2 of the experiment. With MATLAB, it
%is possible to simply input everything in one array
r=[0.0229 0.0281 0.033 0.025 0.0161 0.0266 0.0389 0.0118 0.0401 0.0104];

solution=subs(U,'r',r)
