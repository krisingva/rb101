# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# Answer: # => 11
# The Array#pop method removes the last item of the array and returns that item.
# In this case that would be the string 'caterpillar'. The String#size method
# returns the number of characters in the calling string. In this case it would
# be 11.