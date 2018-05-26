clear
clc
L=10;
rmat=500;
xpos(1:rmat)=0;
ypos(1:rmat)=0;
k=1;
n=1;

while n<=rmat
    
    xdisplacement=randi([1 4]);
    ydisplacement=randi([1 4]);
    a=randi([1 2]);  
    b=randi([1 2]);

    if xpos(k)+xdisplacement<=L && a==1
        xpos(k+1)=xpos(k)+xdisplacement;
    elseif xpos(k)+xdisplacement>L && a==1
        xpos(k+1)=xpos(k)-xdisplacement;
    elseif xpos(k)-xdisplacement>=0 && a==2
        xpos(k+1)=xpos(k)-xdisplacement;
    elseif xpos(k)-xdisplacement<0 && a==2
        xpos(k+1)=xpos(k)+xdisplacement;

    end
    
    if ypos(k)+ydisplacement<=L && b==1
        ypos(k+1)=ypos(k)+ydisplacement;
    elseif ypos(k)+ydisplacement>L && b==1
        ypos(k+1)=ypos(k)-ydisplacement;
    elseif ypos(k)-ydisplacement>=0 && b==2
        ypos(k+1)=ypos(k)-ydisplacement;
    elseif ypos(k)-ydisplacement<0 && b==2
        ypos(k+1)=ypos(k)+ydisplacement;
    end
    n=n+1;
    k=k+1;
end
coordinates=[xpos;ypos]';
subplot(2,1,1)
grid on
grid minor
hold on
plot(xpos,ypos,'ok')
subplot(2,1,2)
h=histogram2(xpos,ypos)