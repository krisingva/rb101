# Take a moment to digest the following example:

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# # Output:
# 1
# 3
# # returns:
# [[1, 2], [3, 4]]

# What's happening in this, seemingly simple, piece of code? Take it apart and
# try to describe every interaction with precision.

# The #each method is called on the outer array which contains the following
# elements: sub-arrays [1, 2] and [3, 4]
# the Array#first method is called on each of these sub-array elements and
# returns the first element in each: 1 and 3
# the #puts method outputs those returns
# the #each method returns the original array: [[1, 2], [3, 4]]

# LS:
# The Array#each method is being called on the multi-dimensional array [[1, 2],
# [3, 4]]. Each inner array is passed to the block in turn and assigned to the
# local variable arr. The Array#first method is called on arr and returns the
# object at index 0 of the current array - in this case the integers 1 and 3,
# respectively. The puts method then outputs a string representation of the
# integer. puts returns nil and, since this is the last evaluated statement
# within the block, the return value of the block is therefore nil. each doesn't
# do anything with this returned value though, and since the return value of
# each is the calling object - in this case the nested array [[1, 2], [3, 4]] -
# this is what is ultimately returned.

