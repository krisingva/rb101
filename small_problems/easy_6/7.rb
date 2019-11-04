# Write a method that takes an Array as an argument, and returns two Arrays (as
# a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half Array.

def halvsies(array)
  first_half_length = (array.size / 2.0).round
  new_array = [array.shift(first_half_length), array]
end

# LS:
# Solution
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

# Discussion
# Our task is to split an array into two pieces, a first and second half. We
# first get the middle, which is more exactly the size of the first half, by
# dividing the original array's size by two. If the original array is odd in
# size, then the call to ceil will account for that, making the first half
# larger than the second by one.

# To create both halves, the Array#slice method is used. Here slice takes two
# arguments: the first one is the starting index and the second one is the
# length of the slice. For the second half, we can use our middle value as the
# starting index and specify a length that includes any remaining elements left
# in the original array after we removed the first half.

# Finally, our halvsies array is created by specifying our two halves as the
# sole elements of a new array.

# Further Exploration Can you explain why our solution divides array.size by 2.0
# instead of just 2?

# This is but one way to solve this problem. What solution did you end up with?
# Was it similar or entirely different?

# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]