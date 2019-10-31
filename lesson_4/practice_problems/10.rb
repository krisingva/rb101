# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Answer: # => [1, nil, nil]
# The first iteration: if statement is false, else statement returns element
# which is 1. This is the first element of the return array. Second and third
# iterations: if statement is true, returns nil (puts always returns nil). The
# second and third elements of the return array are nil.