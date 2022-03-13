# You will write a method only_unique_elements that takes in an Array
# The method returns a new array where all duplicate elements are removed. 
# You must solve this using a hash.

def only_unique_elements(arr)
    # Write your code here

    # frequency = {}
    # arr.each do |el| 
    #     frequency[el] ||= 0
    #     frequency[el] += 1
    # end
    # frequency.select { |char, num| num == 1 }
    # return frequency.keys

    frequency = {}
    arr.each { |ele| frequency[ele] = true }
    return frequency.keys
end

print only_unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) == ["a", "b", "c"]
puts

print only_unique_elements(['cow', 'goat', 'sheep', 'cow', 'cow', 'sheep']) == ["cow", "goat", "sheep"]
puts