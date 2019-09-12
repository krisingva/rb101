# Sum of Digits

# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Example:
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# Input: integer >=0
# Output: integer

# Algorithm: Break up the input integer into digits, add up digits.

# Methods:
# Integer#digits
# digits → array
# digits(base) → array
# Returns the digits of int's place-value representation with radix base (default: 10). The digits are returned as an array with the least significant digit as the first array element.
# base must be greater than or equal to 2.

# Array#sum
# sum(init=0) → number
# sum(init=0) {|e| expr } → number
# Returns the sum of elements. For example, [e1, e2, e3].sum returns init + e1 + e2 + e3.
# If a block is given, the block is applied to each element before addition.
# If ary is empty, it returns init.

def sum(number)
  number.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Using Enumerable#reduce
# def sum(number)
#   number.digits.reduce(:+)
# end

# LS Solution 1:
# def sum(number)
#   sum = 0
#   str_digits = number.to_s.chars        # converts integer to string, then string to array of string characters

#   str_digits.each do |str_digit|
#     sum += str_digit.to_i               # iterates over array, converting each string element into integer and adding to sum
#   end

#   sum
# end

# LS Solution 2:
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end