%Problem 2: Air Conditioning Unit
%Define variables
%n= the number of light bulbs, Elb= energy emitted by each light bulb, a=
%number of appliances, Ea= energy emitted by appliances, Eo= energy from
%outside

n=20; Elb=100; a=4; Ea=500; Eo=3000;

%Amount of heat that air-conditioner must remove from home per second
Etotal=(n*Elb)+(a*Ea)+Eo

%Air conditioner must remove 7000 J/s, 4 needed if they can handle 2000 J/s
%Redefine amount of energy emitted by lightbulb when using CF bulbs
Elb=18;
Etotal=(n*Elb)+(a*Ea)+Eo
