t=input('Input outside temperature in degrees Fahrenheit\n');
tempc=5/9*(tempf-32);
tempk=tempc+273.15;

psat=6.1078*10^(7.5*tempc/(tempc+237.3));
hum=input('Input relative humidity as a decimal\n');
pv=psat*hum;

tempscchart=[0:5:35];
airdensities=[1.2922, 1.2690, 1.2466, 1.2250, 1.2041, 1.1839, 1.1644, 1.1455];
drydens=interp1(tempscchart,airdensities,tempc);

rho=