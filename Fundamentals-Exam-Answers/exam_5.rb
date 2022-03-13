# You will write a method more_than_once that takes in a String
# The method will return an array containing the characters that appeared more than twice in the string.

def more_than_once(string)
    # Write your code 
    # solution 1
    # arr = string.split
    # frequency = {}
    # arr.each do |el| 
    #     frequency[el] ||= 0
    #     frequency[el] += 1
    # end
    # result = []
    # frequency.each do |char, num|
    #     if num > 2
    #         result << char
    #     end
    # end
    # return result

    # solution 2

    # arr = string.split
    # frequency = {}
    # arr.each do |el| 
    #     frequency[el] ||= 0
    #     frequency[el] += 1
    # end
    # result = []
    # frequency.select { |char, num| num > 2 }
    # return frequency.keys

end

print more_than_once('mississippi') == ["i", "s"]
puts

print more_than_once('bootcamp') == []
puts