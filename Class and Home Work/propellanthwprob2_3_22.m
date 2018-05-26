%Homework 3/22 Problem 2: Propellant

%Define all given information, temperature, humidity, and pressure
temp= [116 114 118 124 126];
humidity = [45 42 41 38 61];
pressure=[110 115 120 95 118];

%Use the find function to determine which batches pass the following
%criteria
passtemp=find(temp>=115 & temp<=125)
passhumidity=find(humidity>=40 & humidity<=60)
passpressure=find(pressure>=100 & pressure<=200)

%Use the find function again to find which batches failed for any reason,
%using "or" (|) and which batches passed all criteria, using "and" (&)
fail=find(temp<115 | temp>125 | humidity<40 | humidity>60 | pressure<100 | pressure>200)
pass= find(temp>=115 & temp<=125 & humidity>=40 & humidity<=60 & pressure>=100 & pressure<=200)

%Finally, determine the percentage of batches that passed and the
%percentage of batches that failed. Use length(pass) to determine how many
%elements are in the vector for batches that passed, then divide it by 5,
%the total number of batches, then finally multiply by 100 to get a
%percentage. Repeat for percentfail, except using length(fail) instead
percentpass= ((length(pass))/5)*100
percentfail= ((length(fail))/5)*100