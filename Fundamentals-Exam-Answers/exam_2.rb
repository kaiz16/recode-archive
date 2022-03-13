# You will write a method reverse(word) that takes in a String
# The method returns the word with its letters in reverse order
# You may not use the String#reverse or String#reverse! method

def reverse(word)
    # Write your code here
    #
    # solution 1
    #
    # array = word.split
    # x = []
    # array.length.times do x.push(array.pop) end
    # return x.join

    # solution 2
    #
    # array = word.split
    # x = []
    # array.each do |ele|
    #     x.unshift(ele)
    # end
    # return x.join

    # solution 3
    #
    # reversed = ""


    # current_index = 0
    # while current_index < word.length
    #     current_letter = word[current_index]
    #     reversed = current_letter + reversed
    #     current_index += 1
    # end

    # return reversed


end

puts reverse("cat") == "tac"
puts

puts reverse("programming") == "gnimmargorp"
puts

puts reverse("bootcamp") == "pmactoob"
puts