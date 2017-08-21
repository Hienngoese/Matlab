function alphas = alpha_strongWolfe_zoom(func,grad,x,p,alphalo,alphahi,c1,c2)
% ALPHA_STRONGWOLFE_ZOOM helps us to compute the alpha
% alphas = alpha_strongWolfe_zoom(func,grad,x,p,alphalo,alphahi,c1,c2)
% Algorithm 3.6 on page 61 in Nocedal and Wright
 fx = func(x);
 gx = grad(x)'*p;
 while 1
    alphax = 1/2*(alphalo + alphahi);
    xx = x + alphax*p;
    fxx = func(xx);
    gxx = grad(xx)'*p;
    xl = x + alphalo*p;
    fxl = func(xl);
   if ((fxx > fx + c1*alphax*gx) | (fxx >= fxl))
      alphahi = alphax;
   else
      if abs(gxx) <= -c2*gx,
        alphas = alphax;
        break;
      end
      if gxx*(alphahi-alphalo) >= 0
      alphahi = alphalo;
      end
      alphalo = alphax;
   end
   
end