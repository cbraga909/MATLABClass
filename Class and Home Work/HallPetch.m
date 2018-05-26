function[sigma,HPgraph]= HallPetch(sigma_initial, K, d)
sigma = sigma_initial+K.*d.^(-1/2);
HPgraph = plot(d,sigma);
xlabel('Average Grain Diameter'), ylabel('Yield Strength'), title('Grain Size and Metal Strength')
end




