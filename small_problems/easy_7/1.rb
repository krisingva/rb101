# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# Notes:
# Input: Two arrays of the same size
# Output: One array that is the combination of the two input arrays with the
# elements alternating.
# array1index0 becomes newarrayindex0
# array2index0 becomes newarrayindex1
# array1index1 becomes newarrayindex2
# array2index1 becomes newarrayindex3
# Rules:
# 1. array1 becomes the even numbered items, array2 becomes the odd numbered
#    items in newarray
# 2. newarray will have double the size of input array
# Algorithm:
# 1. Initialize empty newarray
# 2. Initialize counter = 0,
# 3. Loop and at each iteration add to newarray array1[counter]
#    array2[counter]
# 4. Increment counter by 1
# 5. Next iteration
# 6. Break when newarray size is double the size of array2
# 7. Return newarray

# def interleave(array_1, array_2)
#   new_array = []
#   counter = 0
#   loop do
#     new_array << array_1[counter] << array_2[counter]
#     counter += 1
#     break if new_array.size == array_1.size * 2
#   end
#   new_array
# end

# LS:

# Solution
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

# Discussion
# In our solution, we use #each_with_index to get values and index numbers for
# array1, then use the index number to access the corresponding element in
# array2.

# Further Exploration
# Take a few minutes to read about Array#zip. #zip doesn't do the same thing as
# interleave, but it is very close, and more flexible. In fact, interleave can
# be implemented in terms of zip and one other method from the Array class. See
# if you can rewrite interleave to use zip.

# array_1.zip(array_2) gives:
# => [[1, "a"], [2, "b"], [3, "c"]]

def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
