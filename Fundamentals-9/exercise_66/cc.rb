def coin_change(coins, val)
    result = (0..val).to_a
    result.map!{|x| x = (0..val).to_a}
   # p result
    for i in 0..result.length - 1
        if i == 0
            result[i] = []
        else
            coins.each do |c|
                #result[i] << c if c <= i
                if c <= i 
                    result[i] = result[i - c].clone << c if (result[i - c].clone << c).sum == i && (result[i - c].clone << c).length < result[i].length
                end
            end
        end
    end
    if result.last.sum > val #|| result.last.sum < val
        p -1
        return
    else
        p result.last
        return
    end
end
#[0,2,7,10,20,50], 71)
coins = [2]
val = 3
coin_change(coins, val)