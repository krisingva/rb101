# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Answer: # => true
# The block returns the last line of code evaluated, which in this case is
# num.odd?. As each element of the array is passed into the block this
# evaluation returns either in a true or false value. The three iterations will
# return: true, false, true. The Enumerable#any? method will return either a
# true or false value. If any of the elements return true from the block, the
# any? method will return true. In this code it will return true. The output
# will be determined by the puts statement and will be:
# 1
# 2
# 3

# Correction: #any? will stop iterating after the first true return from the
# block, therfore puts num is only invoked on the first item and the output:
# 1