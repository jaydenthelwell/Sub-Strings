def stock_picker(stock_prices)
  if stock_prices.length < 2
    return "Not enough data to make a profit."
  end

  buy_day = 0
  sell_day = 0
  max_profit = 0

      (0...stock_prices.length).each do |i|
        (i + 1...stock_prices.length).each do |j|
          profit = stock_prices[j] - stock_prices[i]
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
    end
  end
  [buy_day, sell_day]
end

stock_prices = [17,3,6,9,15,8,6,1,10]
best_days = stock_picker(stock_prices)
