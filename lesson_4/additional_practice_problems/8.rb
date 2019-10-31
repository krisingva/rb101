# What happens when we modify an array while we are iterating over it? What
# would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# Answer:
# Output:
# 1
# 3
# First iteration: Considers element at index 0. Since the p number is above the
# numbers.shift(1), it will output 1 and then remove it from numbers array,
# which leaves [2, 3, 4]. The iteration must be index-based, starting at index 0
# and going one by one from there.
# Second iteration: Considers the element at index 1 which at this point is 3,
# it will output 3 and remove it which leaves [2, 4]. All indexes have been
# considered at this point and method will exit.
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# Answer:
# Output:
# 1
# 2
# First iteration: Considers element at index 0. Since the p number is above the
# numbers.pop(1), it will output 1 and then remove the last number from the
# numbers array, which leaves [1, 2, 3].
# Second iteration: Considers element at index 1 which at this point is 2, it
# will output 2 and remove the last item of the array, which leaves [1, 2]. All
# indexes have been cosidered and the method exits.

# LS:
# To better understand what is happening here, we augment our loop with some
# additional "debugging" information:

# numbers = [1, 2, 3, 4]
# numbers.each_with_index do |number, index|
#   p "#{index}  #{numbers.inspect}  #{number}"
#   numbers.shift(1)
# end
# The output is:

# "0  [1, 2, 3, 4]  1"
# "1  [2, 3, 4]  3"
# From this we see that our array is being changed as we go (shortened and
# shifted), and the loop counter used by #each is compared against the current
# length of the array rather than its original length.

# In our first example, the removal of the first item in the first pass changes
# the value found for the second pass.

# In our second example, we are shortening the array each pass just as in the
# first example...but the items removed are beyond the point we are sampling
# from in the abbreviated loop.

# In both cases we see that iterators DO NOT work on a copy of the original
# array or from stale meta-data (length) about the array. They operate on the
# original array in real time.