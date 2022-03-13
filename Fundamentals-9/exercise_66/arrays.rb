array1 = ["ABC", "BCD", "CDE"]
array2 = ["ABC", "BCD", "CDE"]

def search_array(array1, array2)
    for i in 0..array1.length - 1
        if !array2.include?(array1[i]) 
            return false
        end
    end
    return true
end

p search_array(array1, array2)