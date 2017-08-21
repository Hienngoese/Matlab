function [p_monte] = montecarlo_twodimensional
tic
rho = 7/8;
mu = [7; 5.5];
Sigma = [1 rho; rho 1];
x = mvnrnd(mu,Sigma,10000)
count=0;
for i=1:10000
    x(i,1) = round(x(i,1)*100)/100;
    x(i,2) = round(x(i,2)*100)/100;
    if (5.5<x(i,1)) &&(x(i,1)<7.5)&& (4<x(i,2)) && (x(i,2)<6)
        count = count+1;
    end
end
p_monte = count/10000;
toc
end

