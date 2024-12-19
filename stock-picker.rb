def stock_picker(stock_prices)
  profit = 0
  days = []

  stock_prices.each_with_index do |buy_price, buy_day|
    stock_prices.slice(buy_day..-1).each do |sell_price|
      if sell_price - buy_price > profit
        profit = sell_price - buy_price
        days[0] = buy_day
        days[1] = stock_prices.index(sell_price)
      end
    end
  end

  days
end