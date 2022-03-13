def return_coins(remaining_coins, target_amount)
    remaining_coins = remaining_coins.sort
    #return remaining_coins
    return [] if target_amount == 0 || remaining_coins.empty? || remaining_coins.inject(0){|sum,x| sum + x } < target_amount
    temp = 0
    index = 0
   # return remaining_coins
   #test = remaining_coins.count(target_amount / 2)
  
    for i in 0..remaining_coins.length - 1
        if remaining_coins[i] <= target_amount 
            #if remaining_coins.include?(target_amount / 2) >= 2 && remaining_coins[i] == target_amount / 2
                temp = remaining_coins[i]
                index = i
                break if 
        end
    end
    p remaining_coins
    remaining_coins.delete_at(index)
    return [temp, return_coins(remaining_coins, target_amount - temp)].flatten.compact
    # for i in 0..remaining_coins.length - 1
    #     if remaining_coins[i] <= target_amount
    #         temp = remaining_coins[i]
    #         remaining_coins.delete_at(i)
    #         return [temp, return_coins(remaining_coins, target_amount - temp)].flatten.compact
    #     end
    # end
    # remaining_coins.each do |x|
    #     #if x == target_amount || (target_amount % x == 0 && x > 1) || x < target_amount && remaining_coins[remaining_coins.index(x) + 1] > target_amount
    #     if x    
    #         temp = x
    #         return x
    #         #remaining_coins.delete_at(remaining_coins.index(x))
    #        # return [x, return_coins(remaining_coins, target_amount - temp)].flatten.compact
    #     end
    # end
end

# Test Case 1
# coins = []
# 100.times do
#   coins << 10
#   coins << 5
#   coins << 2
#   coins << 1
# end

# p return_coins(coins, 15)#.sort == [10, 5].sort()}"

# # Test Case 2
# coins = []
# 100.times do
#   coins << 10
#   coins << 5
#   coins << 2
#   coins << 1
# end

# p "Test Case 2 #{return_coins(coins, 1).sort == [1].sort()}"

# # Test Case 3
# coins = []
# 100.times do
#   coins << 2
#   coins << 1
# end
# coins << 10
# coins << 5

# p "Test Case 3 #{return_coins(coins, 20).sort == [10, 5, 2, 2, 1].sort()}"

# # Test Case 4
# coins = []

# p "Test Case 4 #{return_coins(coins, 20).sort == [].sort()}"

# # Test Case 5
# coins = []
# 5.times do
#   coins << 10
# end

# p "Test Case 5 #{return_coins(coins, 100).sort == [].sort()}"

# # Test Case 5
# coins = []
# 100.times do
#   coins << 2
#   coins << 1
# end
# coins << 10
# coins << 5

# p "Test Case 5 #{return_coins(coins, 3).sort == [2, 1].sort()}"

# # Test Case 6
# coins = []
# 100.times do
#   coins << 1
# end

# p "Test Case 6 #{return_coins(coins, 34).sort == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# # Test Case 7
# coins = []
# 4.times do
#   coins << 10
# end
# 2.times do
#   coins << 50
# end
# 1.times do
#   coins << 20
# end
# 100.times do
#   coins << 1
# end

# p "Test Case 7 #{return_coins(coins, 98).sort == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# # Test Case 8
# coins = []
# 8.times do
#   coins << 1
# end
# 2.times do
#   coins << 20
# end
# 1.times do
#   coins << 50
#   coins << 15
#   coins << 10
# end

# p return_coins(coins, 98)#.sort == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1].sort()

# Test Case 9
coins = []
8.times do
  coins << 1
  coins << 5
end
3.times do
  coins << 11
end
2.times do
  coins << 20
end
  coins << 50
  coins << 10

p return_coins(coins, 33)#.sort == [11, 11, 11].sort()}"

