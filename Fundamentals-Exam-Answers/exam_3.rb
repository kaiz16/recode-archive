# You will write a method element_count that takes in an Array
# This method returns a hash representing the count of each element in the array.
# You may not use #tally

def element_count(arr)
    # Write your code here
    # array = arr.uniq
    # result = { }
    # index = 0
    # loop do
    #     result.store(array[index],arr.count(array[index]))
    #     index += 1
    #     break if index == array.length
    # end
    # return result

    frequency = {}
    # frequency.default = 0
    # frequency = Hash.new(0)

    arr.each do |el| 
        frequency[el] ||= 0
        frequency[el] += 1
    end
    return frequency
end

puts element_count(["a", "b", "a", "a", "b"]) == {"a"=>3, "b"=>2}
puts
puts element_count(["red", "red", "blue", "green"]) == {"red"=>2, "blue"=>1, "green"=>1}
puts