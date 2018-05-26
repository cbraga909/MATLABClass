function output=my_sqrt1(initial_guess,criterion)
A=input('Enter the number you want to approximate the square root of\n');
xo=initial_guess;
y=(1/A)*xo^2;
xn=(xo/8)*(15-y*(10-3*y));
while abs(xn-xo)<=criterion
    xn=xn+1
    xn=(xo/8)*(15-y*(10-3*y));
end
output=xn;
end
