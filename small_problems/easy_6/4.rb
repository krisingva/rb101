# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Notes:
# Input: An array containing n elements of any object type (could be empty)
# Output: The same array mutated so that the order of array elements has been
# reversed. Element at index -1 has become the element at index 0 and vice
# versa.
# 1. Iterate through array, swapping the first and last element, then the second
#    to first and second to last and so on. Everything done in place using
#    parallel assignment.

def swap_array(arr)
  counter = arr.size
  loop do
    break if counter == (arr.size / 2)
    arr[arr.size - counter], arr[counter - 1] = arr[counter - 1], arr[arr.size - counter]
    counter -= 1
  end
  arr
end

# LS:

# def reverse!(array)
#   left_index = 0
#   right_index = -1

#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end

#   array
# end

# Discussion
# This solution is straightforward; it sets one index to point to the beginning
# of the array, another index to point to the end of the array, and then walks
# through the Array exchanging elements at each step. Since we update the Array
# in place, we name the method reverse! instead of reverse.

# Note that the loop terminates at the middle of the list. If we continued, we
# would end up rebuilding the original array.

# The most interesting part of this code is the parallel assignment on line 6;
# this is a Ruby idiom for exchanging two values without requiring an
# intermediate variable. It's a handy idiom to remember.

# In practice, of course, you would probably use Array#reverse! instead of
# writing this method. It helps, though, to write your own versions of standard
# methods so you can understand how they work, and how to use those principles
# in your own code.

# Examples:

list = [1,2,3,4]
p list.object_id
p swap_array(list)
p list
p list.object_id

p list = %w(a b e d c)
p swap_array(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p swap_array(list) == ["abc"]
p list == ["abc"]

p list = []
p swap_array(list) == []
p list == []
