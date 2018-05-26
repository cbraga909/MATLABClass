%Homework 4/10 Composition of Air

%The fraction of nitrogen, oxygen and argon in the air, respectively
fractionair=[0.78 0.21 0.01];
%The molecular weight of each substance
molecweight=[28 32 40];

%Molecular weight of all the air
molecweightair= dot(fractionair, molecweight)