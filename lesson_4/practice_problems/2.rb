# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Answer: # => 2
# From the documentation of #count: "If a block is given, it counts the
# number of elements yielding a true value." So for each iteration, will
# determine whether the element yields the block to return true, if yes, then
# count will increment by one, otherwise count will remain the same value. This
# example will return the integer 2 since two of the array elements are strings
# with less than four characters.