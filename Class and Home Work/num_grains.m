%This function calculates the number of grains in a 1 square inch area at
%100x magnification when the grain size is known
function output=num_grains(n)
%The output is defined by the equation given
output = 2.^(n-1);
end

