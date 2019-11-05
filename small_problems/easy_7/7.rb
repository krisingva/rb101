# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# Notes:
# Input: Array of integers, not empty
# Output: Print out result of: multiply integers of array, divide by number of
# elements in array, round to 3 decimal places.
# Algorithm:
# 1. Initialize a result = 1.000
# 2. Iterate through array and multiply each integer with result and make that
#    number the result. Use Enumerable#inject, example:
# (5..10).inject(1) { |product, n| product * n }
# 3. result becomes result / array.size
# 4. result rounded to 3 decimal places
# 5. puts result

def show_multiplicative_average(array)
  result = (array.inject(1.000) { |product, n| product * n }) / array.size
  puts "The result is #{format("%.3f", result)}"
end

# Examples:

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667

# LS:

# Approach/Algorithm
# Hint: You may need to use Kernel#format.

# Solution
# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts format('%.3f', average)
# end

# Discussion
# We could use Enumerable#inject to compute the product, but for simplicity, we
# use #each instead. Once we have the desired product, we calculate the
# multiplicative average and format it with three decimal places.

# Further Exploration
# What happens if you omit the call to #to_f on the first line of our method?

# It will not give an accurate result because only integers are used in the
# calculations