def stock_picker(prices = [])
  best = []
  best_profit = 0

  prices.each_with_index do |buy_price, buy_index|
    prices.each_with_index do |sell_price, sell_index|
      current_profit = sell_price - buy_price
      if buy_index <= sell_index && (best_profit < current_profit)
        best_profit = current_profit
        best = [buy_index, sell_index]
      end
    end
  end
  best
end

first_list = [100, 15, 20, 5, 13, 25, 9]
second_list = [15, 2, 12, 19, 7, 3, 10]
p stock_picker(first_list)
p stock_picker(second_list)
p stock_picker [17, 3, 6, 9, 15, 8, 6, 1, 10]
