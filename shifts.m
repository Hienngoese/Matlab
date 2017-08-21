k =0;
for s=1:25
    for l = 12:17
        if (s+l-1) <= 36 
			for break_start_period = s+2 : s+l-3
				row = zeros(1,36);
                row(s:break_start_period-1) = ones(1,break_start_period-s);
                row((break_start_period+2):(s+l-1)) = ones(1,s+l-break_start_period-2);
                k = k+1;
                a(k,1:36) = row;
			end           
        end
    end
   
end
size(a)