function [pmc] = montecarlointegration
tic
x = normrnd(7, (1/4)*pi, [1 10000]) ;
count = 0;
for i=1:10000
    x(i) = round(x(i)*100)/100;
    if (5.5<x(i))&& (7.5>x(i)) 
        count = count+1;
    end
end
pmc = count/10000;
toc;
end