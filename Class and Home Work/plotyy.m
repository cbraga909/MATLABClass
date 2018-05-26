x=0:pi/20:2*pi;
y1=sin(x);
y2=exp(x)
subplot(2,1,1)
plot(x,y1,x,y2)
subplot(2,1,2)
plotyy(x,y1,x,y2)