%Newton's law of universal gravitation
%Define givens
G=6.673*10^-11; M=6*10^24; m=7.4*10^22; r=3.9*10^8;
%Solve for F
F=(G*M*m)/(r^2)

%Define new givens
d=linspace(3.8*10^8, 4.0*10^8, 10);
%Solve for F2
F2= (G*M*m)./(d.^2)