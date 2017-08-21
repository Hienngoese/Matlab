function [next_theta] = simulation_Optimization_FDSA(a,alpha,c,gamma,theta1,n,func_y)
p = numel(theta1);  
e = zeros(p,p); 
for i=1:p
    e(i,i)=1;
end
theta(1,1:p)=theta1;
for k=1:n
    a_(k) = a/(k^alpha);
    c_(k) = c/(k^gamma);
    for i=1:p
        g(i) = (func_y(theta(k,1:p)+c_(k)*e(i,:)) - func_y(theta(k,1:p)-c_(k)*e(i,:)))/(2*c_(k));              
    end
    theta(k+1,1:p) = theta(k,1:p)-a_(k)*g;

end
next_theta = theta(n+1,1:p);
end