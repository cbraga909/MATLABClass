%GPS Signalling
%Define radius of earth, in miles
r = 3960;

%Create vectors to represent lattitude and longitude of two cities
city1= input('What are the coordinates of the first city? Express as a vector, e.g. [lattitude, longitude]:\n');
city2= input('What are the coordinates of the second city? Express as a vector, e.g. [lattitude, longitude]: \n');

%Defining angles in terms of the lattitude and longitude of the two cities
%Angles for first city
phi1= 90-city1(1);
theta1= city1(2);
%Angles for second city
phi2= 90-city2(1);
theta2= city2(2);

%Converting polar coordinates to rectangular coordinates
%Rectangular coordinates of city 1
x1=r*sind(phi1)*cosd(theta1);
y1= r*sind(phi1)*sind(theta1);
z1 = r*cosd(phi1);
%Rectangular coordinates of city 2
x2 = r*sind(phi2)*cosd(theta2);
y2 = r*sind(phi2)*sind(theta2);
z2= r*cosd(phi2);

%Solving for magnitude of vectors
vectorA= sqrt(x1^2 + y1^2 + z1^2);
vectorB = sqrt(x2^2 +y2^2 + z2^2);

%Solving for angle between the two vectors
gamma = acos(((x1*x2)+(y1*y2)+(z1*z2))/(vectorA*vectorB))

%Solving for distance
distance = gamma*r