

def vending_machine(remaining_coins, target_amount, coins_return = [])
#   if remaining_coins.empty?
#     return coins_return
#   else
#     remaining_coins = remaining_coins.sort.reverse
#   end
remaining_coins = remaining_coins.sort.reverse
#p remaining_coins
return coins_return if remaining_coins.empty? || remaining_coins.inject(0){|sum,x| sum + x } < target_amount
#p "coins return is now #{coins_return} | remaining #{remaining_coins} | target  #{target_amount}"

#sleep(1)


return coins_return if target_amount == 0
# if 
#     p "FUCK YOUUUUUUUUUUU"
#     return coins_return
#     #p "TRUE"
# end

# if remaining_coins.include?(target_amount)
#         coins_return.push(target_amount)
#         remaining_coins.delete_at(remaining_coins.index(target_amount)) 
#         target_amount -= target_amount
#         vending_machine(remaining_coins, target_amount, coins_return)
# end
  
def processcoins(remaining_coins, target_amount, coins_return, denominator, index)
    coins_return.push(denominator)
    remaining_coins.delete_at(index)
    vending_machine(remaining_coins, target_amount - denominator, coins_return) if target_amount != 0
    return coins_return
end

denominator = 0
index = 0
modulos_of_target = (2..target_amount).to_a.select{|x| target_amount % x == 0}.sort.reverse
#p modulos_of_target
test = false
    modulos_of_target.each do |x|
        if remaining_coins.include?(x)
            test = true
            denominator = x
            index = remaining_coins.index(denominator)
            break
           # processcoins(remaining_coins, target_amount, coins_return, denominator, index)
        else
           test = false
        end
        #processcoins(remaining_coins, target_amount, coins_return, denominator, index)
    end
   if test == false
    for i in 0..remaining_coins.length - 1
     #target_amount % remaining_coins[i] == 0 && remaining_coins[i] > 1 && remaining_coins[i] > denominator 
    
        if remaining_coins[i] <= target_amount && remaining_coins[i] > denominator
            denominator = remaining_coins[i]
            index = i
        end
    end
    end
    
    processcoins(remaining_coins, target_amount, coins_return, denominator, index)
    
   
    #remaining_coins[i] < target_amount

#     coins_return = []
   
#    # p remaining_coins
#     until target_amount == 0
#           if remaining_coins.include?(target_amount)
#                 coins_return.push(target_amount)
#                 remaining_coins.delete_at(remaining_coins.index(target_amount)) 
#                 target_amount -= target_amount
#           else
#             for i in 0..remaining_coins.length - 1
              
#                 # for j in 0..remaining_coins.length - 1
#                 #     if target_amount % remaining_coins[i] == 0 && remaining_coins[i] > 1
#                 # end
#                 if  remaining_coins[i] < target_amount
                    
#                     coins_return.push(remaining_coins[i])
#                     target_amount -= remaining_coins[i]
#                     remaining_coins.delete_at(i)
#                   #  p "Statement 2 has been executed"
#                     break
#                 end
#             end
#           end
#          # p target_amount
#          # sleep(1)
#     end
    
#     return coins_return
end

# Test Case 1
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p "Test Case 1 #{vending_machine(coins, 15).sort == [10, 5].sort()}"

# Test Case 2
coins = []
100.times do
  coins << 10
  coins << 5
  coins << 2
  coins << 1
end

p "Test Case 2 #{vending_machine(coins, 1).sort == [1].sort()}"

# Test Case 3
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p "Test Case 3 #{vending_machine(coins, 20).sort == [10, 5, 2, 2, 1].sort()}"

# Test Case 4
coins = []

p "Test Case 4 #{vending_machine(coins, 20).sort == [].sort()}"

# Test Case 5
coins = []
5.times do
  coins << 10
end

p "Test Case 5 #{vending_machine(coins, 100).sort == [].sort()}"

# Test Case 5
coins = []
100.times do
  coins << 2
  coins << 1
end
coins << 10
coins << 5

p "Test Case 5 #{vending_machine(coins, 3).sort == [2, 1].sort()}"

# Test Case 6
coins = []
100.times do
  coins << 1
end

p "Test Case 6 #{vending_machine(coins, 34).sort == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# Test Case 7
coins = []
4.times do
  coins << 10
end
2.times do
  coins << 50
end
1.times do
  coins << 20
end
100.times do
  coins << 1
end

p "Test Case 7 #{vending_machine(coins, 98).sort == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# Test Case 8
coins = []
8.times do
  coins << 1
end
2.times do
  coins << 20
end
1.times do
  coins << 50
  coins << 15
  coins << 10
end

p "Test Case 8 #{vending_machine(coins, 98).sort == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1].sort()}"

# Test Case 9
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
  coins << 50
  coins << 10

p "Test Case 9 #{vending_machine(coins, 33).sort == [11, 11, 11].sort()}"