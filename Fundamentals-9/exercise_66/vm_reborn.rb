# coins = [50, 20, 20, 11, 11, 11, 10, 1, 1, 1, 1, 1, 1, 1, 1]
# target_amount = 33
# def binary_search(coins, target, value)
#     low = 0
#     high = coins.length - 1
#     while target > 0
#         mid = (low + high) / 2
#         if coins[mid] == target
#            #puts target
#            puts "#{target}, #{value}"
#            target = value - target
#            value = value - target
           
#            coins = coins.select{|x| x <= target}
#            target = coins[0]
#         elsif coins[mid] < target
#             high = mid - 1
#         elsif coins[mid] > target
#             low = mid + 1
#         end
#     end
#    # p coins.select{|x| x <= target}
#     #return binary_search(coins, target, )
# end

# This method is to get how much amount of coins it takes to return target amount. 
def minimum(uniq_coins, val, times = []) 
    #return times if uniq_coins.length <= 1 && val % uniq_coins[0] != 0
    
    
   # tmp = uniq_coins.ma
    return times if val == 0
    #tmp = 0
    # uniq_coins.each do |x| # [50,20,10,7,3], 74
    #     if x <= val
    #         val -= x
    #         times.push(x)
    #         #puts "#{times}, #{val}"
    #        # return puts times if val <= 0
    #        uniq_coins.each do |c|
    #             if uniq_coins.include?(val % c) && c <= val
    #                 val -= c
    #                 times.push(c)
    #                 puts "#{times}, #{val}"
    #             # break
    #             elsif val % c == 0
    #                 (val / c).times do 
    #                     #val -= c
    #                     times.push(c)
    #                     #puts "#{times}, #{val}"
    #                 end
    #                 val = 0
    #                 return times
    #             end
    #         end
    #     end
    # end
    divisor = (1..val).to_a.select{|x| val % x == 0}
    p divisor
    tmp = 0
    if val % uniq_coins[-1] != 0
        uniq_coins.each do |x| # [70,50,20,10,7,2], 71
            return times if val == 0
            if x < val
              #  puts val
                tmp = val - x
               # times.push(x)
                divisor = (1..tmp).to_a.select{|x| tmp % x == 0}
               # p divisor
                divisor.each do |d|
                    if uniq_coins.include?(d)
                        
                        times.push(x)
                       # puts "Pushed #{x} to #{times}"
                        
                        times.push(d)
                       # puts "Pushing #{d} to #{times}"
                        val -= x
                        val -= d
                    end
                end
            end
        end
    else
        uniq_coins.each do |x|
            if x <= val 
             tmp  =  val - x
             times.push(x)
             return minimum(uniq_coins, tmp, times)
            end
        end
    end
   # p tmp
   
   # return times
   
end

# [50, 7, 10, 7] 
# [50, 7]
p minimum([70,50,20,10,7,2], 71) #[50,20,10,7,2] ,73
def return_coins(coins, target_amount)
    return [] if coins.empty? || coins.sum < target_amount 
    coins = coins.sort.reverse 
    # It saves time if coins are unique
    uniq_coins = coins.uniq.select{|x| x <= target_amount}
    #p uniq_coins
    def coin_change(coins, target_amount)
        return if target_amount == 0 
        coins.each do |x|
            if x <= target_amount
                tmp = x
                coins.delete_at(coins.find_index(tmp))
                #coins.reject
                return [tmp, coin_change(coins, target_amount - tmp)].flatten.compact
            end
        end
        #p coins.methods
       #return []
    end

    # Sort the unique coins by the least amount to return target amount
    uniq_coins.sort_by! do |x|
       minimum(uniq_coins.select{|c| c <= x}, target_amount)
    end
    #p uniq_coins
    uniq_coins.keep_if do |x| 
        coins.select{|c| c <= x}.sum >= target_amount
    end
    #p uniq_coins
    p coins.select{|c| c <= uniq_coins[0]}
    coin_change(coins.select{|c| c <= uniq_coins[0]}, target_amount)
    
end

# # Test Case 1
# coins = []
# 100.times do
#   coins << 10
#   coins << 5
#   coins << 2
#   coins << 1
# end

# p "Test Case 1 #{return_coins(coins, 15).sort == [10, 5].sort()}"

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

# p "Test Case 8 #{return_coins(coins, 98).sort == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# # Test Case 9
# coins = []
# 8.times do
#   coins << 1
# end
# 3.times do
#   coins << 11
# end
# 2.times do
#   coins << 20
# end
#   coins << 50
#   coins << 10

# p "Test Case 9 #{return_coins(coins, 33).sort == [11, 11, 11].sort()}"

# Test Case 10
coins = []
8.times do
  coins << 10
end
3.times do
  coins << 7
end
2.times do
  coins << 10
end
  coins << 50
  coins << 20
  coins << 2
#p coins.sort.reverse.uniq

#p return_coins(coins, 73)
#p coins