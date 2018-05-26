%Homework 4/10 Thermal Properties of a Bomb Calorimeter

%Heat capacity of water, steel, and aluminum. This is a 1x3 matrix
heatcapacity=[4.2 0.45 0.9];

%The masses of water, steel, and aluminum.
masswater=[110 100 101 98.6 99.4];
masssteel=[250 250 250 250 250];
massaluminum=[10 10 10 10 10];

%Matrix for all of the masses. This is a 3x5 matrix
allmass=[masswater; masssteel; massaluminum];

%Now to find the total heat capacity for each trial, I use matrix
%multiplication. It must be heatcapacity*allmass in order for the inner
%matrix dimensions to agree
totalheat=[heatcapacity*allmass];

%I create a vector for the trials
trials=[1 2 3 4 5];

%Now I create a matrix with both the trials and the total heat
table=[trials; totalheat];

%Now, using the fprintf function, I can create a table that shows the total heat
%capacity for each trial
fprintf('Trial # Total Heat Capacity\n')
fprintf('%5.2f %9.2f\n', table)


