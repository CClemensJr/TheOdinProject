#Implement a method #stock_picker that takes an array of stock prices
#one for each hypothetical day. It should return a pair of days representing the
#best day to buy and the best day to sell. Days start at 0.

def stock_picker stocks
  stock_picks = Array.new(2, 0)
  profit = stock_picks[1] - stock_picks[0]

  stocks.each_with_index do |purchase_price, purchase_day|
    stocks.each_with_index do |sale_price, sale_day|
      max_profit = sale_price - purchase_price

      if max_profit > profit
        if purchase_price != stocks.last && sale_price != stocks.first
          if purchase_day < sale_day
            profit = max_profit
            stock_picks = [purchase_day, sale_day]
          end
        end
      end
    end
  end

  puts stock_picks
end

stock_picker([17,3,6,9,15,8,6,1,10])
