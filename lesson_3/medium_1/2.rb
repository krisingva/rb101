# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2) Why is this and what are two
# possible ways to fix this?

# Answer: You are attempting concatenation of a string and integer which is not
# possible. You would have to add the integers together and save the result as a
# string and then do the concatenation. Or you could save the result as a
# variable and do string interpolation.

# First way: puts "the value of 40 + 2 is " + (40 + 2).to_s

# Second way: total = 40 + 2 puts "the value of 40 + 2 is " + "#{total}"

# LS answer: To fix this either call

# (40+2).to_s or use string interpolation:

# puts "the value of 40 + 2 is #{40 + 2}"