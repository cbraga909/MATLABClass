%Homework 3/15 Problem 3 Part C
%Create vector for dates
date=[1971 1972 1974 1979 1982 1985 1989 1993 1996 1997 1997 1999 1999 1999 2000 2003 2003 2003 2004 2006 2006 2006 2006 2007 2006 2008 2010 2011]';
%Create vector for trasistor count
transistor_count=[2300 2500 4500 29000 134000 275000 1200000 3100000 4300000 7500000 8800000 9500000 21300000 22000000 42000000 54300000 10900000 220000000 592000000 241000000 291000000 82000000 681000000 789000000 1700000000 2000000000 2300000000 2600000000]';

%Create semilog plot with Y axis scaled algorithmically, with circles to
%indicate data points
semilogy(date, transistor_count, 'o')
%use hold on to overlay next plot
hold on
%Create semilog plot of Moore's law with Y axis scaled algorithmically
semilogy(year,d)
%Label plot
title('Transistor Density According to Moores Law and Data'), xlabel('Year'), ylabel('Transistor Density')
%Add legend
legend('Transistor Density from Data','Transistor Density According to Moores Law')