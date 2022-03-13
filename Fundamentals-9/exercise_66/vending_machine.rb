# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins, target_amount)
  # Your code here
  
 #target_amount = 98
  #index = remaining_coins.length - 1
 # p index
  #remaining_coins = [1, 1, 1, 1, 1, 1, 1, 1, 10, 15, 20, 20, 50]
  remaining_coins = remaining_coins.sort().reverse
  p remaining_coins
  return [] if remaining_coins.empty? || remaining_coins.inject(0) {|acc, el| acc + el} < target_amount

  test = 0
  result = []
  index = remaining_coins.length - 1
  until target_amount == 0
      if remaining_coins.include?(target_amount)
          result.push(target_amount)
          remaining_coins.delete_at(remaining_coins.index(target_amount)) 
          target_amount -= target_amount
          
        #  p "Statement 1 has been executed"
      else
        for i in 0..remaining_coins.length - 1
        # if remaining_coins[i] == target_amount
        #       test = remaining_coins[i]
             # p "Statement 1 has been executed"
        if remaining_coins[i] > 1 && target_amount % remaining_coins[i] == 0
              result.push(remaining_coins[i])
              target_amount -= remaining_coins[i]
              remaining_coins.delete_at(i)
              
             
            #  break
             # p "Statement 2 has been executed"

              #break
             
        elsif remaining_coins[i] < target_amount
            result.push(remaining_coins[i])
            p remaining_coins[i]
            target_amount -= remaining_coins[i]
            remaining_coins.delete_at(i)
            
            break
             # p "Statement 3 has been executed"
             
        end
       # index = i 
       # remaining_coins.delete_at(i)
        
        end
      end
      #target_amount = target_amount - test
     # result.push(test)
     # remaining_coins.delete_at(index)
     p remaining_coins
       p result
     p target_amount
     sleep(1)
      
  end
  return result
   
end


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

p "Test Case 9 #{return_coins(coins, 11).sort == [11, 11, 11].sort()}"

