function [iteration] = neediterations(alpha,length,n)
current_length =0;
count = 1;
while (current_length~=length)
X = 2.* rand(n,1) -1; 
Y = 2.*rand(n,1)-1;
for i=1:n
    if (X(i).^2+ Y(i).^2) <=1
        I(i)=1;
    else
        I(i)=0;
    end
end
P = 4*I;
interval = norminv([alpha/2 1-(alpha/2)],mean(P),sqrt(var(P)/n));
lengthinterval = round((interval(2)-interval(1))*100)/100;
if (lengthinterval==length)
    current_length=length;
else
    count=count +1;
end
end
iteration =count;
end