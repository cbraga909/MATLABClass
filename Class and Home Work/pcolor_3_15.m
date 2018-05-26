[x,y,z]=peaks;
subplot(2,2,1)
pcolor(x,y,z)
xlabel('x-axis'), ylabel('y-axis')
title('Pseudocolor')

subplot(2,2,2)
pcolor(x,y,z)
shading interp
xlabel('x-axis'), ylabel('y-axis')
title('Pseudocolor With Interpolated Shading')

subplot(2,2,3)
pcolor(x,y,z)
shading interp
hold on
contour(x,y,z, 20, 'k')
xlabel('x-axis'), ylabel('y-axis')
title('Pseudocolor w/ Interp. Shading and Contours')

subplot(2,2,4)
contour(x,y,z)
xlabel('x-axis'), ylabel('y-axis')
title('Contours')