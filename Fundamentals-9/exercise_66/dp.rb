def minimum_coin_change(coins, amount, times = [])
    puts "coins to return #{times}, amount = #{amount}"
    sleep(0.5)
    return times if amount == 0
    tmp = 0
    # if !coins.includes(1)

    # end
    coins.each do |c|
        if c <= amount
            tmp = c
            return minimum_coin_change(coins, amount - tmp, times.push(tmp))
        end
    end
end

#p minimum_coin_change([50, 20, 7, 2], 71)

def coin_change(coins, amount, times = 0)
    tmp = 0
   # return -1 if coins.sum < amount
   p amount
   sleep(0.5)
    
    return times if amount == 0
    #return -1 if amount == 1
        coins.each do |c|
            if c <= amount #&& coins.include?(amount % c)
                tmp = c
            end
        end
        coin_change(coins, amount - tmp, times + 1)
end

#p coin_change([3, 5], 11)#[3, 5], 11) #([2, 5], 11) #([3, 7], 11)
def count(s, m, n )
  
    if (n == 0)
        return 1
    end

    if (n < 0)
        return 0
    end

    if (m <=0 and n >= 1)
        return 0
    end
    return count( s, m - 1, n ) + count( s, m, n-s[m-1] )
end


def test(coins, amount)
    amount_arr = (0..amount).to_a
    base = []
    amount_arr.length.times do 
        base << 0
    end
    
    #return amount_arr
    #for i in 0..coins.length - 1
        
       # for i in 0..coins.length - 1
      # base = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    #    base = [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0]
    #         c = 6
    #         coins = [0, 5, 6]
    #tmp = coins
    for i in 1..coins.length - 1
        c = coins[i]
        tmp = coins[0..i]
        for j in 1..amount_arr.length - 1
            if amount_arr[j] == c #&& tmp.include?(amount_arr[j] % c)
                base[j] = base[j - c] + 1
                #one_arr << (one_arr[i - c] + 1)
            elsif amount_arr[j] > c && base[j - c] != 0
                base[j] = base[j - c] + 1
            elsif  c == 1#amount_arr[j] >= c #&& tmp.include?(1)
                base[j] = base[j - c] + 1
            end
        end
        p "#{c} #{base}"
    end
    #return 
        
       # end
    #end
    
end
#test([0,1,5,6,8], 11)
#test([0,2,7,10,20,50], 71)
#[0,2,7,10,20,50], 71
#[0,1,5,6], 7)
#p coin_change([3, 5], 11)#[3, 5], 11) #([2, 5], 11) #([3, 7], 11)

def min_coin(coins, val)
    result = (0..val).to_a.map{|x| val + 1}
    
    # for i in 0..result.length - 1
    #     if i == 0
    #         result[i] = 0
    #     else
    #         coins.each do |c|
    #             result[i] = result[i - c] + 1 if c <= i
    #         end
    #     end
        
    # end
    # p "#{result}"
end

coins = [1,5]
val = 6

min_coin(coins, val)