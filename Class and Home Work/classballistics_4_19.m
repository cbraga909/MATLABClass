%Class Example: Use Symbolic Plotting to Illustrate a Ballistics Program

v=input('Input the initial velocity, in m/s\n');

impact_range=sym('(2*v^2*cos(a)*sin(a))/g')

impact=subs(impact_range,{'v','g'},{v,9.8})


ezplot(impact,[0 pi/2])
title('Maximum Projectile Distance Travelled');
xlabel('Angle, radians'),ylabel('Range, m')

xlim([0 pi/2])

