# You will write two methods:

# You will write a method is_prime? that takes in a number
# This method returns a boolean, indicating whether the number is prime. 
# Note: A prime number is only divisible by 1 and itself.

# The method pick_primes that takes in an array of numbers
# The method should return a new array containing only the prime numbers
# The method pick_primes should use the method is_prime?

def is_prime?(num)
    # Write your code here
    # (1..num).select { |element| num % element == 0 }.length == 2 ? true : false

    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def pick_primes(numbers)
    # Write your code here
    return numbers.select { |number| is_prime?(number) }
end

print pick_primes([2, 3, 4, 5, 6]) == [2, 3, 5]
puts

print pick_primes([101, 20, 103, 2017]) == [101, 103, 2017]
puts