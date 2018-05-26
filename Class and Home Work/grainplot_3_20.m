%Now I solve and plot
%I first define my n values from 10 to 100
n=[10:100];
%Next I define the variable grains by using the function I created
grains=num_grains(n)

%I create two subplots, one for a regular plot, and one as a plot with the
%y axis scaled logarithmically
subplot(2,1,1)
plot(n, grains)
%Now I label the graph
xlabel('Grain Size'), ylabel('Number of Grains'), title('Number of Grains vs. Grain Size')

subplot(2,1,2)
semilogy(n, grains)
%Again, I label the graph appropriately
xlabel('Grain Size'), ylabel('Number of Grains'), title('Number of Grains vs. Grain Size')

