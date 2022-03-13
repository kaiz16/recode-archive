# You will write a method, pairs_to_zero that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def pairs_to_zero(nums)
    # Write your code here

    # option 1

    # pairs = []
    # arr.each_with_index do |ele1, index1|
    #     arr.each_with_index do |ele2, index2|
    #         if index2 > index1
    #             pairs << [ele1, ele2]
    #         end
    #     end
    # end

    # pairs.select! { |element| element.sum == 0 }
    # pairs.count

    
    # option 2

    # count = 0
    # arr.each_with_index do |ele1, index1|
    #     arr.each_with_index do |ele2, index2|
    #         if ele1 + ele2 == 0 && index2 > index1
    #             count += 1  
    #         end
    #     end
    # end

    # return count

end

puts pairs_to_zero([ 2, 5, 11, -5, -2, 7 ]) == 2
puts
puts pairs_to_zero([ 21, -23, 24 -12, 23 ]) == 1
puts