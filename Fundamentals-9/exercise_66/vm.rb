#coins = [1, 1, 1, 1, 1, 1, 1, 1, 10, 15, 20, 20, 50]
coins = []
100.times do
    coins << 10
    coins << 5
    coins << 2
    coins << 1
  end
val = 15
coins = coins.sort

return [] if coins.empty? || coins.sum < val

def minimum_coin_to_return_val(val, coins, times = 0)
    return times if val == 0
    less = 0
    coins.each do |x|
        less = x if x <= val
    end
    return minimum_coin_to_return_val(val - less, coins, times + 1)
end

uniq_coins = coins.uniq.select{|x| x <= val}

uniq_coins.sort_by! do |c| 
    minimum_coin_to_return_val(val, coins.select{|x| x <= c})
end

#p uniq_coins
def return_coins(val, coins)
    return if val == 0
    less = 0
    coins.each do |x|
        less = x if x <= val
    end
    coins.delete_at(coins.index(less))
    return [less, return_coins(val - less, coins)].flatten.compact
end

uniq_coins.each do |c|
    if coins.select{|x| x <= c}.sum >= val
        p return_coins(val, coins.select{|x| x <= c})
        return
    end
   # return []
end
#p coins.select{|x| x <= uniq_coins[0]}.sum >= val
#p return_coins(val, coins.select{|x| x <= uniq_coins[0]})
