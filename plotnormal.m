function plotnormal(x)
mu = 7; sigma = (1/4)*pi;
tic 
f = normpdf(x,mu,sigma);
plot(x,f,'k','LineWidth',2.5);
toc 
end


