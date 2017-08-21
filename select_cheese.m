function [profit,cheeses]=select_cheese(weights,profits,capacity)
for i=1:numel(weights)
    ratios(i)= profits(i)/weights(i);
end
cheeses= zeros(1,numel(weights))
index= 1:numel(weights);
check =[weights;profits;ratios;index];
check';%transpose matrix Check
sort_check = sortrows(check',3);
i=numel(profits);
profit = 0;
while (capacity > 0) && (i>0)
    if sort_check(i,1)<capacity 
        w = sort_check(i,1);
    else
		w = capacity;
	end;
    profit = profit +w * sort_check(i,3);
	cheeses(sort_check(i,4)) = w
    capacity = capacity - w;
    i=i-1;
end
end
