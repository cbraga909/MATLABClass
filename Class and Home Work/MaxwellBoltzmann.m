kb=1.38e-23;
speed=[0:100:5500];
v_squared=speed.^2;
He=6.647e-27;
temp=300;
particles=1000000;
m=1000000*6.647e-27;
f_v=4*pi*(m/(2*pi*kb*temp)^(3/2)).*v_squared.*exp(-m.*v_squared/(2*kb*temp))