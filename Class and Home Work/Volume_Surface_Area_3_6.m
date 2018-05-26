%Volume and Surface area of a barbell
%Define givens
r=10; l=15; d=1;
%Solve for volume
volume=8/3*r^3*pi + 1/4*d^2*pi*l
%Solve for surface area
surface_area= 8*pi*r^2 + pi*d*l

%van der Waals equation
%Define givens
P=220; n=2; V=1; a=5.536; B=0.03049; R=0.08314;
%Solve for temperature
T=((P+(n^2*a)/(V^2))*(V- n*B))/(R*n)

