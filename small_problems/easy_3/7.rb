# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the
# argument Array.

# Examples:

# eventies([2, 3, 4, 5, 6]) == [2, 4, 6]
# eventies([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# eventies(['abc', 'def']) == ['abc']
# eventies([123]) == [123]
# eventies([]) == []

# def eventies(array)
#   arr = []
#   array.map.with_index do |x, i|
#     arr << x if i.even?
#   end
#   arr
# end

# p eventies([2, 3, 4, 5, 6]) == [2, 4, 6]
# p eventies([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p eventies(['abc', 'def']) == ['abc']
# p eventies([123]) == [123]
# p eventies([]) == []

# LS Solution:
# def eventies(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

# Discussion This problem can be slightly confusing because we want the 1st,
# 3rd, 5th, and so elements of the array, but these correspond to elements with
# indexes 0, 2, 4, etc. As long as you keep that in mind, there are many
# different ways to solve this problem correctly.

# Our solution takes the most basic approach; rather than using any of a number
# of different Array methods, we use a simple while loop, incrementing our index
# by 2 with each iteration. For each iteration, we add the element value to our
# result Array, odd_elements.

# Further Exploration Write a companion method that returns the 2nd, 4th, 6th,
# and so on elements of an array.

# Try to solve this exercise in at least 2 additional ways.
# 1.
# def eventies(array)
#   arr = []
#   array.map.with_index do |x, i|
#     arr << x if i.odd?
#   end
#   arr
# end

# 2.
# def eventies(array)
#   arr = []
#   index = 1
#   while index < array.size
#     arr << array[index]
#     index += 2
#   end
#   arr
# end

# 3.
def eventies(array)
  index_array = []
  arr = []
  array.each_index { |i| index_array << i if i.odd? }
  index_array.each { |x| arr << array[x] }
  arr
end

p eventies([2, 3, 4, 5, 6]) == [3, 5]
p eventies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p eventies(['abc', 'def']) == ['def']
p eventies([123]) == []
p eventies([]) == []