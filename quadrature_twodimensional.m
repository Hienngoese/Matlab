function [p_quad]=quadrature_twodimensional
tic
rho = 7/8;
mu = [7; 5.5];
Sigma = [1 rho; rho 1];
f = @(y1,y2) mvnpdf([y1' y2*ones(length(y1),1)],mu',Sigma);
p_quad = dblquad(f,5.5,7.5,4,6);
p_quad = round(p_quad*100)/100;
toc
end

