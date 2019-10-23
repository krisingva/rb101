# Convert a String to a Number! The String#to_i method converts a string of
# numeric characters (including an optional plus or minus sign) to an Integer.
# String#to_i and the Integer constructor (Integer()) behave similarly. In this
# exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. Your method should do this the old-fashioned
# way and calculate the result by analyzing the characters in the string.

digit_hash = {
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "0" => 0
 }

def string_to_integer(string, hash)
  new_array = []
  string.split('').select { |x| new_array << hash[x] }
  new_array.inject { |a,i| a * 10 + i }
end

# Examples

p string_to_integer('4321', digit_hash) == 4321
p string_to_integer('570', digit_hash) == 570

# LS:
# Solution
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end
# Discussion
#   As usual, this isn't the shortest or even the easiest solution to this
#   problem, but it's straightforward. The big takeaway from this solution is
#   our use of the DIGITS hash to convert string digits to their numeric values.
#   This technique of using hashes to perform conversions is a common idiom that
#   you can use in a wide variety of situations, often resulting in code that is
#   easier to read, understand, and maintain.

# The actual computation of the numeric value of string is mechanical. We take
# each digit and add it to 10 times the previous value, which yields the desired
# result in almost no time. For example, if we have 4, 3, and 1, we compute the
# result as:

# 10 * 0 + 4 -> 4
# 10 * 4 + 3 -> 43
# 10 * 43 + 1 -> 431
# Further Exploration
# Write a hexadecimal_to_integer method that converts a string representing a
# hexadecimal number to its integer value.

# Example:

# hexadecimal_to_integer('4D9f') == 19871
