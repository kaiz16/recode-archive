  #arr = remaining_coins.uniq
  # remaining_coins.uniq.select do |x|
#    arr = {}
#    remaining_coins.uniq.each do |x|
#       arr[x] = remaining_coins.count(x)
#    end
#    arr = arr.sort.reverse.to_h
   
#    def check_target_amount(result, target_amount)
#     total = 0
#     result.each {|x| total += x}
#       return true if total == target_amount
#       return false
#    end

#    result = []
#    loop do
#       each_minimum_coins = {}
#       total = 0
#       arr = arr.select{|x, y| y != 0}
#       arr.each do |x, y|
#         each_minimum_coins[x] = target_amount / x
#       end
      
#       arr.each do |x, y|
#       if arr[x] <= each_minimum_coins[x]
#           result.push(x)
#           arr[x] = y - 1
#         end
#       end
#       p each_minimum_coins
#       break if check_target_amount(result, target_amount)
#   end
  
#  p result
  #  until total >= target_amount
  #  # total = 0
  #   if result.empty?
  #       arr.each do |x, y|
  #         result.push(x)
  #         arr[x] = y - 1
  #       end
  #   elsif total != 0 && total < target_amount
  #     if arr[target_amount - total]
  #       result.push(target_amount - total)
  #       arr[target_amount - total] -= 1
  #     end
  #   end
  #   arr.select! do |x, y|
  #       y != 0
  #   end
  #   total = 0
  #   result.each {|x| total += x}
  #   p result
  #   p total
  #   p arr
  #    #return if total == target_amount
  #  end
  #  p result
   #p total
  #  test = {}
  #  arr.each do |x, y|
  #     test[x] = target_amount / x
  #  end
