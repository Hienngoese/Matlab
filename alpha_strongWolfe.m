function alpha = alpha_strongWolfe( func, grad, x, p, steplengthParam)
% ALPHA_STRONGWOLFE helps us to check Linear research algorithm satisfying the strong Wofle condition
%alpha = alpha_strongWolfe( func, grad, x, p, steplengthParam)can compute the outcome of alpha
%  Algorithms 3.5 on pages 60-61 in Nocedal and Wright
i=1;
c1 = steplengthParam(1);
c2 = steplengthParam(2);
alpha1 = steplengthParam(3);
k = steplengthParam(5);
alpha0 = 0;
while 1
    fxx = func(x+alpha1*p);
    fx0 = func(x);
    if (fxx > func(x)+ c1*alpha1*grad(x)) || ((i>=1) && (fxx >= func(x+alpha0*p)))
        alpha = alpha_strongWolfe_zoom(func,grad,x,p,alpha0,alpha1,c1,c2); 
        break;
    end
    gxx = grad(x+alpha1*p)'*p;
    gx0 = grad(x)'*p;
    if abs(gxx) <= -c2*gx0  
        alpha = alpha1;  
        break;
    end
    
    if gxx >= 0
        alpha = alpha_strongWolfe_zoom(func,grad,x,p,alpha1,alpha0,c1,c2); 
        break;
    end
    alpha0 = alpha1;
    alpha1 = k*alpha1;
    i=i+1;
end
end