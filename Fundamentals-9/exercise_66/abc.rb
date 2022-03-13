#a = [1, 1, 1, 1, 1, 1, 1, 1, 10, 11, 11, 11, 20, 20, 50].reverse
#coins = [50,20,20,11,11,10,8,5,1,1,1]
coins = []
8.times do
  coins << 1
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 60
  coins << 50
  coins << 10



coins = coins.sort.reverse
#p coins, uniq_coins
val = 15647


def coin_change(val, coins, result = [])
    
    return result if val == 0 
        coins.each do |x|
            if x <= val 
                result.push(x)
                val -= x
                #coins.delete_at(coins.index(x))
                return coin_change(val, coins[coins.index(x) + 1..-1], result)
            end
        end
end

#coin_change(val, coins)

coins_to_return = []
uniq_coins = coins.uniq.sort.reverse
#p uniq_coins
for i in 0..uniq_coins.length - 1
        if uniq_coins[i] <= val
           # p coins.select{|x| x <= uniq_coins[i]}
            coins_to_return.push(coin_change(val, coins.select{|x| x <= uniq_coins[i]}))
        end
end
coins_to_return.sort_by! {|x| x.length}
p coins_to_return
def return_coins(coins_to_return, coins)
    coins_to_return.each do |x|
        x.each do |c|
            if x.count(c) > coins.count(c)
                break
            end
            return x
        end
    end
end

p return_coins(coins_to_return, coins)