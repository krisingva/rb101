# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

# def signed_integer_to_string(int)
#   array = []
#   if int == 0
#     array.push(int).join('')
#   elsif int > 0
#     while int > 0 do
#       array << int % 10
#       int = int / 10
#     end
#     array.reverse.join('').prepend('+')
#   else int < 0
#     int *= -1
#     while int > 0 do
#       array << int % 10
#       int = int / 10
#     end
#     array.reverse.join('').prepend('-')
#   end
# end

# Using LS integer_to_string:
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  if number > 0
    integer_to_string(number).prepend('+')
  elsif number < 0
    integer_to_string(number.abs).prepend('-')
  else number == 0
    integer_to_string(number)
  end
end

# Examples

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# LS:
# Solution
# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end
# Discussion
# This solution is very similar to the string_to_signed_integer method we wrote
# 2 exercises ago. It simply checks the sign of the number, and passes control
# to integer_to_string for the heavy lifting.

# The expression number <=> 0 may look a bit odd; this is ruby's "spaceship"
# operator. It compares the left side against the right side, then returns +1 if
# the left side is greater than the right, -1 if the left side is smaller than
# the right, and 0 if the values are the same. This is often useful when you
# need to know whether a number is positive, negative, or zero.

# Further Exploration
# Refactor our solution to reduce the 3 integer_to_string calls to just one.