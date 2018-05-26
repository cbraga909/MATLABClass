x=-10:0.01:10;
k=-1;
y=k*x.^2-2;
h=plot(x,y);
grid on
set(h,'EraseMode','xor')
axis([-10,10,-100,100]);
while k<1
    k=k+0.01;
    y=k*x.^2-2;
    set(h,'XData',x,'YData',y)
    drawnow
end


