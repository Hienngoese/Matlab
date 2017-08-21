function [buyday, sellday, profit] = buysell_portfolio(file1, file2, file3)

function[buy,sell,profit]=optimal_buysell(prices)
  %OPTIMAL_BUYSELL Uses for finding the best time to buy and sell a 
  %certain stock and maximizing possible profit 
  %[buy,sell,profit]=optimal_buysell(prices) gives 
  % 1, the index of price vector at which to buy the stock 
  % 2, the index of the price vector at which to sell the stock
  % 3,the profit that could have been obtained
  
  %we create first value of profit, index of buying and selling 
  profit=prices(2)-prices(1);
  buy=1;
  sell=2;
  min_current=1;
  for i=2:numel(prices)
    if prices(i)-prices(min_current)>profit
      profit=prices(i)-prices(min_current);
      sell=i;
      buy=min_current;
    end
    if prices(i)<prices(min_current)
      min_current=i;
    end  
  end 
end