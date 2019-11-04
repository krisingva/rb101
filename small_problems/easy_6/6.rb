# Write a method that takes two Arrays as arguments, and returns an Array that
# contains all of the values from the argument Arrays. There should be no
# duplication of values in the returned Array, even if there are duplicates in
# the original Arrays.

# Notes:
# Input: two arrays
# Output: an array containing the items of the input arrays with all duplicates
# removed.
# 1. Merge the two arrays into a new array:
# new_array = input array 1 +  input array 2
# 2. Remove the duplicate values from the resulting array
# 2.a. Use #uniq: new_array.uniq

def merge(array_1, array_2)
  (new_array = array_1 + array_2).uniq
end

# Example

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]