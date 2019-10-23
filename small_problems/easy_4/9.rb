# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're
# going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the
# number.

# using Integer#digits and Integer#reverse:
# def integer_to_string(integer)
#   string = integer.digits.reverse.join('')
# end

# longer route:

def integer_to_string(int)
  array = []
  if int == 0
    array.push(int)
  elsif int > 0
    while int > 0 do
      array << int % 10
      int = int / 10
    end
  else
    puts "only positive numbers please"
  end
  array.reverse.join('')
end

# Examples

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# LS:
# Solution
# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end
# Discussion
#   This solution is similar in some respects to the string_to_integer method we
#   developed, but is a bit trickier to get right.

# In string_to_integer, we used a Hash to perform conversions from strings to
# numbers. In this method, we could also use a Hash, but an Array works just as
# well, and maybe more clearly. If we have the digit 5, we can get the string
# equivalent by just looking up DIGITS[5].

# The core of the method simply walks through the number chopping off the last
# digit in each iteration by using number.divmod(10), which returns two values:
# the value of number divided by 10 using integer division, and the remainder of
# that division. The remainder in each case is the rightmost digit in the
# remaining number, so we just prepend it to the current result value. Once
# number is whittled down to 0, we're done.

# Further Exploration
# One thing to note here is the String#prepend method; unlike most string
# mutating methods, the name of this method does not end with a !. However, it
# is still a mutating method - it changes the string in place.

# This is actually pretty common with mutating methods that do not have a
# corresponding non-mutating form. chomp! ends with a ! because the non-mutating
# chomp is also defined. prepend does not end with a ! because there is no
# non-mutating form of prepend.

# How many mutating String methods can you find that do not end with a !. Can
# you find any that end with a !, but don't have a non-mutating form? Does the
# Array class have any methods that fit this pattern? How about the Hash class?

# String mutating methods with a ! in the end of name:
# chr, clear, concat, each_byte, etc
