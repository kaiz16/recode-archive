coins = [3,3,5]

val = 6
#p coins
def return_coins(coins, val, ct = 0, result = [])
    coins = coins.sort.reverse
    return result.last.sort.reverse if ct > val
    result << []
    # if ct == val
    #     tmp = coins
    # else
    #     tmp = coins.clone
    # end
    # p tmp
    cm = 0
        if ct > 0
            coins.each do |c|
                if c <= ct # || result[ct].empty?
                     if result[ct].empty?
                        result[ct] = result[ct - c].clone << c
                        redo
                     end
                     result[ct] = result[ct - c].clone << c if (result[ct - c].clone << c).length < result[ct].length && (result[ct - c].clone << c).sum == ct
                     result[ct] = [] if result[ct].count(c) > coins.count(c) || result[ct].sum < ct
                     #result[ct] = [1,2,3]
                end
            end
            # result[ct].each do |x|
            #     begin
            #         tmp.delete_at(tmp.index(x))
            #     rescue TypeError
            #         return_coins(coins, val, ct + 1, result)
            #         #result[ct] = []
            #     end
                
            # end
         #  p "#{coins}, R #{result}, CT #{ct}"
        end
       
        return_coins(coins, val, ct + 1, result)
end
p return_coins(coins, val)
#p coins