def stock_picker(items)

  buy_and_sell = [0, 1]

  for a in 0 ... items.length - 1 do
    for b in a ... items.length - 1 do
      if items[b] - items[a] > items[buy_and_sell[1]] - items[buy_and_sell[0]]
        buy_and_sell[1] = b
        buy_and_sell[0] = a
      end
    end
  end
  
  p buy_and_sell
  
end

stock_picker([17,3,6,9,15,8,6,1,10])