# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# Input: array of numbers with n elements (could be 0)
# Output: array containing n elements with each element a sum of the elements in
# the original array up to the current index position

def running_total(array)
  new_array = []
  sum = 0
  counter = 0
  while counter < array.size do
    new_array << sum += array[counter]
    counter += 1
  end
  new_array
end

# Examples:

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# LS:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Discussion This solution does nothing fancy; it just walks through the array
# calculating the running total while building the resulting array. #map makes
# this really easy.

# Further Exploration (code below not working) Try solving this problem using
# Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods
# can be applied to Arrays).

# Enumerable#each_with_object:
# evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
# #=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# def running_total(array)
#   sum = 0
#   new_array = []
#   array.each_with_object([]) { |value, sum| new_array << sum += value }
#   new_array
# end

# Enumerable#inject:

# def running_total(array)
#   new_array = []
#   array.inject(0) { |sum, value| new_array << sum + value }
#   new_array
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []