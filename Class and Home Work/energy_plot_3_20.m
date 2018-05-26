%Define mass vector
mass=logspace(0,6);
%Use energy function created
E=energy(mass)

%Create subplots, and plot results
subplot(2,2,1)
plot(mass, E)
%Label graph
xlabel('Mass, kg'), ylabel('Energy, Joules'), title('Energy vs Mass')

%Graph with Y axis scaled logarithmically
subplot(2,2,2)
semilogy(mass, E)
xlabel('Mass, kg'), ylabel('Energy, Joules'), title('Energy vs Mass')

%Graph with X axis scaled logarithmically
subplot(2,2,3)
semilogx(mass, E)
xlabel('Mass, kg'), ylabel('Energy, Joules'), title('Energy vs Mass')

%Graph with both X and Y axis scaled logarithmically
subplot(2,2,4)
loglog(mass, E)
xlabel('Mass, kg'), ylabel('Energy, Joules'), title('Energy vs Mass')
