def palindrome?(str)
    # last_letter = -1
    # for i in 0..str.length-1
    #     if str[i] != str[last_letter]
    #         return false
    #     end
    #     last_letter -= 1
    # end
    # return true
        for i in 0..str.length-1
            if str[i] != str[-i-1]
                return false
            end
        end
        return true
end

p palindrome?("xabcx")