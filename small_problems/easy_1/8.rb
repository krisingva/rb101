# Array Average

# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

# Examples:
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.

# Input: array containing one or more integers as elements.
# Output: an integer, the average of the elements of the input array.

# Algorithm: Add up all the elements of integer for the sum. Count the number of elements. Divide the sum with the count.

# Methods: 

# Array#sum
# sum(init=0) → number
# sum(init=0) {|e| expr } → number
# Returns the sum of elements. For example, [e1, e2, e3].sum returns init + e1 + e2 + e3.
# If a block is given, the block is applied to each element before addition.
# If ary is empty, it returns init.

# Array#count
# count → int
# count(obj) → int
# count {|item| block} → int
# Returns the number of elements.
# If an argument is given, counts the number of elements which equal obj using ==.
# If a block is given, counts the number of elements for which the block returns a true value.

def average(array)
  sum = array.sum
  count = array.count
  ave = sum/count
end
puts average([1,2,3,4,5]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# LS solution:

# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }     # could also be done with numbers.reduce(:+)
#   sum / numbers.count
# end

