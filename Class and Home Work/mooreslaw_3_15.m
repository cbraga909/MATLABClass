%Homework 3/15 Problem 3: Moore's Law

year=[1965:2:2015]; %I first define the years for use on the graph and table
t=[0:2:50]; %I define the time to use in the formula
d=30*exp(t/2); %Setting up the formula for transistor desnity
year_density=[year; d]; %Create matrix for the year and density
fprintf('Year, Transistor Density\n'); %Create labels for table
fprintf('%5.2f %3.2f\n', year_density) %Set up tale with values

%Divide into 4 subplots
%Linear Plot
subplot(2,2,1)
plot(year, d) 
%Label title and axes
title('Linear Plot'), xlabel('Year'), ylabel('Transistor Density') 

%Semilog X Plot
subplot(2,2,2)
semilogx(year, d)
%Label title and axes
title('Semilog X Plot'), xlabel('Year'), ylabel('Transistor Density')

%Semilog Y Plot
subplot(2,2,3)
semilogy(year, d)
%Label title and axes
title('Semilog Y Plot'), xlabel('Year'), ylabel('Transistor Density')

%Loglog Plot
subplot(2,2,4)
loglog(year,d)
%Label title and axes
title('Loglog Plot'), xlabel('Year'), ylabel('Transistor Density')



