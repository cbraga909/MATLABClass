dydt=@(t,y) 2*t
[t,y]=ode45(dydt,[-1 1],1)
ode45(dydt,[-1 1],1)