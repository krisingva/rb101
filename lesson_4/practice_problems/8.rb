# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# Answer: # => [1, 2]
# From the Array#take documentation:
# take(n) → new_ary
# Returns first n elements from the array. If a negative number is given, raises
# an ArgumentError. See also Array#drop.
# The documentation specifies that a new array is returned, implying that the
# original array remains intact.
# Test in irb:
# 2.6.3 :028 > arr = [1, 2, 3, 4, 5]
#  => [1, 2, 3, 4, 5]
# 2.6.3 :029 > arr.take(2)
#  => [1, 2]
# 2.6.3 :030 > arr
#  => [1, 2, 3, 4, 5]