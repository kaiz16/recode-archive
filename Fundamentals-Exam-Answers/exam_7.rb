# You will write a method, combinations that takes in an Array of unique elements
# The method should return a 2D array representing all possible combinations of 2 elements of the array.
# You may not use #combinations

def combinations(arr)
    # Write your code here
    pairs = []
    arr.each_with_index do |ele1, index1|
        arr.each_with_index do |ele2, index2|
            if index2 > index1
                pairs << [ele1, ele2]
            end
        end
    end
    return pairs

    
end

print combinations(["a", "b", "c"]) == [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]) == [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts