%Homework 4/19 

%Problem 1
%Functions given in problem
ex1=sym('x^2-1');
EX1=sym('X^2 - 1');
eq1=sym('x^2=1');
EQ1=sym('X^2 = 1');

%Substitute 4 for each equation
ex1sub4=subs(ex1,'x',4)
subs(EX1, 'X',4); %Result is 15, since it is 4^2-1= 16-1=15
eq1sub4=subs(eq1, 'x',4)
subs(EQ1,'X',4); %Result shows 16==1


%Problem 2
%Define vector of even numbers from 0 to 10
v=[0:2:10];
ex1subv=subs(ex1,'x',v)
subs(EX1,'X',v);
eq1subv=subs(eq1,'x',v)
subs(EQ1,'X',v);
%This works for all four version of the expressions

%Problem 3
%Expressions/Equations given
ex4=sym('a*x^2 +b*x+c');
EX4=sym('A*X^2 +B*X +C');
eq4=sym('a*x^2 +b*x+c=0');
EQ4=sym('A*X^2 +B*X +C=0');

%Substituting values
ex4sub=subs(ex4,{'a','b','c','x'}, {3,4,5,(1:0.5:5)})
subs(EX4,{'A','B','C','X'}, {3,4,5,(1:0.5:5)});
eq4sub=subs(eq4,{'a','b','c','x'}, {3,4,5,(1:0.5:5)})
subs(EQ4,{'A','B','C','X'}, {3,4,5,(1:0.5:5)});

%Results are symbolic

%%
%Chemical Processes

%Equations for each material balance
water=sym('0.2*mtop + 0.65*mbottom=50');
ethanol=sym('0.35*mtop + 0.25*mbottom - 100*x=0');
methanol=sym('0.45*mtop + 0.1*mbottom + 100*x =50');

%Solve the system of equations for the three unknowns
solution=solve(water,ethanol,methanol);

%Solutions show up as a structure array, so to access them, I need to index
%the array
mtop=solution.mtop
mbottom=solution.mbottom
x=solution.x





