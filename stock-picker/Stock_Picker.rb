#Implement a method #stock_picker that takes an array of stock prices
#one for each hypothetical day. It should return a pair of days representing the
#best day to buy and the best day to sell. Days start at 0.

def stock_picker stocks
  buy_stock = stocks.length
  sell_stock = stocks.length

  stocks.each do |price|
    if price < buy_stock
      buy_stock = price
      puts "Buy stock! #{buy_stock}"
    elsif price > sell_stock
      sell_stock = price
      puts "Sell stock! #{sell_stock}"
    else
      puts "Hold stock"
    end
  end

  puts "Buy Price: #{buy_stock}"
  puts "Sell Price: #{sell_stock}"

end

stock_picker([17,3,6,9,15,8,6,1,10])
