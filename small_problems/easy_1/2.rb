# Odd

# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value. You are not
# allowed to use #odd? or #even? in your solution.

def odd(integer)
  integer%2 != 0
end

# puts odd(5)
# puts odd(-17)
# puts odd(0)
# puts odd(2)

# Further exploration: How would you use the Integer#remainder method instead of
# the modulus operator(%)?

# def odd(integer)
#   integer.remainder(2) != 0
# end