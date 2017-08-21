
      function [dec]= num2dec(num,base)
if nargin<2
    dec = 'Not enough argument'; 
elseif (isnumeric(num)==0) |(isnumeric(base)==0)| (num<0) | (base >10) | (base <1) 
    dec = 'Invalid input'; 
else
    b = num2str(num);
    ok = 1;
    for i=1:numel(b)
        if str2num(b(i))> base
            dec = 'Invalid number';
            ok = 0;
            break ;
        end
    end
    if ok 
      a= num2str(num);
      sum = str2num(a(1));
      for i=1:numel(a)-1
       sum =sum* base + str2num(a(i+1));
      end
      dec = sum;
    end
end