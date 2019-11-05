# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# Notes:
# Input: Two arrays of same size, containing integers as elements
# Output: A new array with each element comprised of the product of the
# corresponding indexed elements of input arrays.
# Algorithm:
# 1. Initialize empty results_array
# 2. Initialize a counter = 0
# 3. Loop iterating:
# 3.a. append (array_1[counter] * array_2[counter]) to results_array
# 3.b. counter += 1
# 3.c. break when counter > array_1.size
# 4. return results_array

# def multiply_list(array_1, array_2)
#   results_array = []
#   counter = 0
#   loop do
#     results_array << array_1[counter] * array_2[counter]
#     counter += 1
#     break if counter == array_1.size
#   end
#   results_array
# end

# LS:
# Solution
# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end
# Discussion
# We take a direct approach, and simply iterate an index into both Arrays,
# appending each product to the products Array.

# Further Exploration
# The Array#zip method can be used to produce an extremely compact solution to
# this method. Read the documentation for zip, and see if you can come up with a
# one line solution (not counting the def and end lines).

def multiply_list(array_1, array_2)
  array_1.zip(array_2).map { |x| x[0] * x[1] }
end
# Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]