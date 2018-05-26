%Circuits
%Define givens
L=100; C=1;
R=800;
%Solve for s
S=-(R/(2*L))+ sqrt((R/(2*L))^2 -(1/(L*C)))
s=-(R/(2*L)) - sqrt((R/(2*L))^2 -(1/(L*C)))

R_vector=[1:1000];
Sv= -(R_vector/(2*L)) + sqrt((R_vector/(2*L)).^2 - (1/(L*C)))
sv= -(R_vector/(2*L)) - sqrt((R_vector/(2*L)).^2 - (1/(L*C)))

%As R increases in value, s decreases