def stockpicker (prices)
  best_day_to_buy = 0
  best_day_to_sell = 0
  max_profit = 0

  for i in 0...prices.length
    for j in (i + 1)...prices.length
      profit = prices[j] - prices[i]
      if profit > max_profit
        max_profit = profit
        best_day_to_buy = i
        best_day_to_sell = j
      end
    end
  end
  puts "The profit is #{max_profit}"
  puts "The best day to buy is #{best_day_to_buy}"
  puts "The best day to sell is #{best_day_to_sell}" 
end

# the best day to sell must be in relation with the best day to buy
# 
#
#


stockprices = [17,3,6,9,15,8,6,1,10]
puts stockpicker(stockprices)