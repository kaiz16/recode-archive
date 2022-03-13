coins = [1,2]
val = 3

def minimum_coins(coins, val)
    #table = (0..val).to_a
    res = []
    (val + 1).times do 
        res << val + 1
    end
    
    for i in 0..res.length - 1
        coin_return = [] 
        if i == 0
            res[i] = 0
        else 
            tmp = 0
            coins.each do |c|
                if c <= i && res[i] > (res[i - c] + 1)
                    res[i] = res[i - c] + 1 #if res[i] > (res[i - c] + 1)
                    tmp = i - c
                end  
            end
        end
    end
    p res

end

minimum_coins(coins, val)
# result = {}
# for i in 0..coins.length - 1
#     result[coins[i]] = minimum_coins(coins[0..i], val) if coins[i] <= val
# end
#p result