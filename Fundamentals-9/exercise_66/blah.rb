# Vending Machine Problem
# As per the README requirements.
# You have to use recursion in this problem
# You can create additional nested methods if you need to



def return_coins(remaining_coins, target_amount)
  

    unique_id = "#{remaining_coins + [target_amount]}"
  
  
    if $memorized.key?(unique_id) 
      return $memorized[unique_id]
    end 
  
  
    if remaining_coins.length == 0 or  target_amount <= 0 
      return []
    end
    
    coins_sum = remaining_coins.inject(){|sum,x| sum + x }
    
    
    if coins_sum < target_amount
      return []
    end 
  
    if coins_sum == target_amount
      return remaining_coins
    end 
  
  
  
    if remaining_coins.length == 2
      if remaining_coins[0] == target_amount
        return [remaining_coins[0]]
      end 
  
      if remaining_coins[1] == target_amount
        return [remaining_coins[1]]
      else 
        return []
      end 
    end
    
    with_me = [remaining_coins[0]] + return_coins(remaining_coins[1..-1], target_amount - remaining_coins[0])
    without_me = return_coins(remaining_coins[1..-1], target_amount)
  
    with_me_sum = with_me.inject(){|sum,x| sum + x }
    without_me_sum = without_me.inject(){|sum,x| sum + x }
    
  
    
    if with_me.count <= without_me.count 
       
      if with_me_sum == target_amount
        $memorized[unique_id] = with_me
        return with_me
      elsif without_me_sum == target_amount
        $memorized[unique_id] = without_me
        return without_me
      else 
        return []
      end 
     
    else     
    
      if without_me_sum == target_amount
        $memorized[unique_id] = without_me
        return without_me
      elsif with_me_sum == target_amount
        $memorized[unique_id] = with_me
        return with_me
      else 
        return []
      end 
    
    end 
  end
  
  
  
  
  
  $memorized = {}
  
#   # Test Case 1
#   coins = []
#   100.times do
#     coins << 10
#     coins << 5
#     coins << 2
#     coins << 1
#   end
  
#   p return_coins(coins, 15).sort.reverse == [10, 5]
  
  
#   # Test Case 2
#   coins = []
#   100.times do
#     coins << 10
#     coins << 5
#     coins << 2
#     coins << 1
#   end
  
#   p return_coins(coins, 1).sort.reverse == [1]
  
#   # Test Case 3
#   coins = []
#   100.times do
#     coins << 2
#     coins << 1
#   end
#   coins << 10
#   coins << 5
  
#   p return_coins(coins, 20).sort.reverse == [10, 5, 2, 2, 1]
  
  
#   # Test Case 4
#   coins = []
  
#   p return_coins(coins, 20).sort.reverse == []
  
#   # Test Case 5
#   coins = []
#   5.times do
#     coins << 10
#   end
  
#   p return_coins(coins, 100).sort.reverse == []
  
#   # # Test Case 5
#   coins = []
#   100.times do
#     coins << 2
#     coins << 1
#   end
#   coins << 10
#   coins << 5
  
#   p return_coins(coins, 3).sort.reverse == [2, 1]
  
#   # Test Case 6
#   coins = []
#   100.times do
#     coins << 1
#   end
  
#   p return_coins(coins, 34).sort.reverse == [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  
#   # Test Case 7
#   coins = []
#   4.times do
#     coins << 10
#   end
#   2.times do
#     coins << 50
#   end
#   1.times do
#     coins << 20
#   end
#   100.times do
#     coins << 1
#   end
  
#   p return_coins(coins, 98).sort.reverse == [50, 20, 10, 10, 1, 1, 1, 1, 1, 1, 1, 1]
  
#   # Test Case 8
#   coins = []
#   8.times do
#     coins << 1
#   end
#   2.times do
#     coins << 20
#   end
#   1.times do
#     coins << 50
#     coins << 15
#     coins << 10
#   end
  
#   p return_coins(coins, 98).sort.reverse == [50, 20, 20, 1, 1, 1, 1, 1, 1, 1, 1]
  
#   # Test Case 9
#   coins = []
#   8.times do
#     coins << 1
#   end
#   3.times do
#     coins << 11
#   end
#   2.times do
#     coins << 20
#   end
#     coins << 50
#     coins << 10
  
#   p return_coins(coins, 33).sort.reverse == [11, 11, 11]
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

p return_coins(coins, 80).sort.reverse