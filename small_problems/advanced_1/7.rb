# Merge Sorted Lists
# Write a method that takes two sorted Arrays as arguments, and returns a new
# Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

def merge(arr1, arr2)
  results_arr = []
  if arr1.empty?
    results_arr = arr2
    return results_arr
  elsif arr2.empty?
    results_arr = arr1
    return results_arr
  end

  counter_arr1 = 0
  counter_arr2 = 0
  loop do
    if arr1[counter_arr1] <= arr2[counter_arr2]
      results_arr << arr1[counter_arr1]
      counter_arr1 += 1
    elsif arr1[counter_arr1] > arr2[counter_arr2]
      results_arr << arr2[counter_arr2]
      counter_arr2 += 1
    end
    break if counter_arr1 >= arr1.size || counter_arr2 >= arr2.size
  end
  if counter_arr1 < arr1.size
    results_arr += arr1[counter_arr1..-1]
  elsif counter_arr2 < arr2.size
    results_arr += arr2[counter_arr2..-1]
  end
  results_arr
end

# LS:
# Solution
# def merge(array1, array2)
#   index2 = 0
#   result = []

#   array1.each do |value|
#     while index2 < array2.size && array2[index2] <= value
#       result << array2[index2]
#       index2 += 1
#     end
#     result << value
#   end

#   result.concat(array2[index2..-1])
# end

# Discussion
# This problem is a lot trickier than it looks, especially with the proviso that
# you may not sort the result, but have to produce a sorted list. It's made even
# harder by not allowing mutation.

# The obvious solution is to walk through both arrays simultaneously, keeping
# track of where you are in each array with appropriate indexes. We'll modify
# this a tiny bit by using Array#each to iterate through the array, and use an
# index to track our location in the array2.

# With each iteration of array1, we copy all elements from array2 that are less
# than or equal to the array1 value, incrementing our index as needed. Note that
# we need to be careful to not try copying any values from array2 that aren't
# there. After copying these elements, we then append the current value from
# array1, and start the next iteration.

# When the loops are done, we may be left with 1 or more items in array2 that
# were not included in the results. The last step is to make sure they are
# included.

# We did not write this method all in one go; it took several debugging rounds
# to get just the right sequence of actions. It was not easy to get right.

# Examples:

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]