%Define givens
%Zl= impedence from inductor, Zc= impedence from capacitator, R= impedence
%from resistor, Zt= total impedence, V= applied voltage
Zl= 0+5i; Zc= 0+15i; R=5+0i; Zt=Zc+Zl+R; V= 10+0i;

%Solve for current
I= V/Zt