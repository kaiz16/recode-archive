# You will write a method, is_sorted?(array), that accepts an array of integers
# The method should return true if the elements are in increasing order, false otherwise.
# You may not use the Array#sort method in your solution

# Write Your method code here

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = is_sorted?(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 4, 10, 13, 15], true)
    check_solution(2, [1, 4, 10, 10, 13, 15], true)
    check_solution(3, [1, 2, 5, 3, 4 ], false)
end

# Execute the tests.
run_tests()