%First Define a matrix for heights in feet
height = [0:10000];

%Convert the radiuses of the two planets into feet
radmarsft= 4217*5280;
radearthft= 7926*5820;

%Define each planet using the distance function
mars=distance(radmarsft, height);
earth = distance(radearthft, height);

%Create a table with two columns and a row for every height
table = [mars; earth]'

