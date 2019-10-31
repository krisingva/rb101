# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Answer: # => [1, 2, 3]
# From the documentation: "Returns an array for all elements of enum for
# which the given block returns false." Since puts will always return nil, all
# of the elements will result in a falsey return of the block and therefore the
# array returned from the method will contain all the elements of the original
# array.