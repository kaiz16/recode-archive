# In Class Exercise: Binary Search
# Write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found

def binary_search(array, target)
	#Your code here
end

test_array = (100..200).to_a
puts binary_search(135, test_array) == 35

test_array = [13, 19, 24, 29, 32, 37, 43]
puts binary_search(35, test_array) == -1