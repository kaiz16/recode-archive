# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to

def return_coins(remaining_coins, target_amount)
    # Your code here
    
   #target_amount = 33
    #index = remaining_coins.length - 1
   # p index
    #remaining_coins = [1, 1, 1, 1, 1, 1, 1, 1, 10, 11, 11, 11, 20, 20, 50]
    remaining_coins = remaining_coins.sort()
   p remaining_coins
    #p target_amount
    return [] if remaining_coins.empty? || remaining_coins.inject(0) {|acc, el| acc + el} < target_amount
  
    test = 0
    result = []
    index = remaining_coins.length - 1
    #while remaining_coins.length >= 0
        for i in 0..remaining_coins.length - 1
          if remaining_coins[i] == target_amount
              test = remaining_coins[i]
             # break
             # p "Statement 1 has been executed"
             # result.push(remaining_coins[i])
              #return result
          elsif remaining_coins[i] > 1 && target_amount % remaining_coins[i] == 0
                test = remaining_coins[i]
               # p "Statement 2 has been executed"
               # break
          elsif remaining_coins[i] < target_amount
              test = remaining_coins[i]
             # p "Statement 3 has been executed"
              #p test
              index = i 
          end
         # remaining_coins.delete_at(i)
          
        end
        
        target_amount = target_amount - test
        result.push(test)
        remaining_coins.delete_at(index)
        p result
        p target_amount
        #p remaining_coins
        
        # sleep(1)
        return result if target_amount == 0
    #end
    
     
  end
  
  # Test Case 1
  coins = []
  100.times do
    coins << 10
    coins << 5
    coins << 2
    coins << 1
  end
  
  p "Test Case 1 #{return_coins(coins, 15).sort == [10, 5].sort()}"
  
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