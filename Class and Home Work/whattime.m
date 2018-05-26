function output=whattime(finalvelocity_in_mph)
distance=input('Input the distance, in meters, you are planning to travel\n');
velocitysi=finalvelocity_in_mph*4/9;
%2.8381 comes from our formula for velocity when "flooring" the gas pedal,
%from Trial 1
t1=velocitysi/2.8381;
d1=1.4192*t1.^2;
t2=(distance-d1)/velocitysi;
output=t1+t2;
end


