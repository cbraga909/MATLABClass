%Create a function with an output of distance and the inputs of radius and
%height
function output=distance(radius, height)
%Define the output using the equation
output = sqrt(2.*radius.*height + height.^2);
end

