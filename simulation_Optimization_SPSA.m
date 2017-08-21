function [next_theta] = simulation_Optimization_SPSA(a,alpha,c,gamma,theta1,n,func_y)
p = numel(theta1);
theta(1,1:p)=theta1;
for k=1:n
    a_(k) = a/(k^alpha);
    c_(k) = c/(k^gamma); 
    rand_perturb(k,1:p) = binornd(1,0.5,1,p);
    for j=1:p
        if rand_perturb(k,j) == 0
            rand_perturb(k,j) = -1;     
        end
    end
    for i=1:p
        g(i) = (func_y(theta(k)+c_(k)*rand_perturb(k,1:p)) - func_y(theta(k)-c_(k)*rand_perturb(k,1:p)))/(2*c_(k)*rand_perturb(k,i));        
    end
    theta(k+1,1:p) = theta(k,1:p)-a_(k)*g;
end
    next_theta = theta(n+1,1:p);
end