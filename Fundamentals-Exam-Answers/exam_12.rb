# You will write a method, caesar_cipher that takes a String
# The method will shift the characters by an Integer factor and then output the modified String
# For example, caesar_cipher("a", 5) -> "f"
# (a is the first alphabet (1). Add 5, so the value is now 6. f is the 6th alphabet.)
# Remember that lowercase and uppercase characters have different values

def caesar_cipher(string, shift_factor)
# Write your code here
    lower_alphabets = ("a".."z").to_a
    upper_alphabets = ("A".."Z").to_a
    result = ""

    string.each_char do |char|
        if lower_alphabets.include?(char)
            old_index = lower_alphabets.index(char)
            new_index = old_index + shift_factor
            result = result + lower_alphabets[new_index % 26]
        elsif upper_alphabets.include?(char)
            old_index = upper_alphabets.index(char)
            new_index = old_index + shift_factor
            result = result + upper_alphabets[new_index % 26]
        else
            result = result + char
        end
    end

    return result

end

print caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"
puts