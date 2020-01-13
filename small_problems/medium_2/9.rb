# Bubble Sort
# Bubble Sort is one of the simplest sorting algorithms available. It isn't an
# efficient algorithm, but it's a great exercise for student developers. In this
# exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without
# making any swaps; at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm
# as well as a minor optimization technique, see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be
# "in-place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.

# Notes:
# Get the size of the array. The number of iterations is size - 1. Start
# an outer loop and make a copy of array. Start loop with it at 0 and
# compare items of copied array at index[it] and index[it + 1]. If
# item at index[it + 1] is less than item at index[it], then reassign
# both so that they are in order, otherwise add 1 to it and repeat loop.
# When it equals array size, stop loop. Compare original array and copied
# array. If they are the same, exit outer loop and return array. If not,
# reassign original array to copied array and start inner loop with that.

def sorting_array(arr)
  it = 0
  while it <= arr.size - 2 do
    arr[it], arr[it + 1] = arr[it + 1], arr[it] if arr[it + 1] < arr[it]
    it += 1
  end
  arr
end

def bubble_sort!(arr)
  arr1 = arr
  loop do
    copied_array = arr1.dup
    if arr1 == sorting_array(copied_array)
      arr.map!.with_index { |x,i| x = copied_array[i] }
      break
    else arr1 = sorting_array(copied_array)
    end
  end
end

# Examples

array = [5, 3]
bubble_sort!(array)
array
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# LS:
# Solution
# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end

# Discussion
# Our outer loop handles the task of repeating iterations until the Array is
# completely sorted. It terminates the first time we iterate through all
# comparisons without making any swaps, which we keep track of through the
# swapped variable.

# The inner loop takes care of looking at every pair of consecutive elements and
# swapping them if the first element of a pair is greater than the second. We
# use the usual ruby idiom for swapping two values, e.g.,

# a, b = b, a
# Further Exploration
# Note that we did not use the optimization suggested on the Wiki page that
# skips looking at tail elements that we know are already sorted. If your
# solution also skipped this optimization, try modifying your solution so it
# uses that optimization.

