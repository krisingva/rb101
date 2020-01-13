# Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Issue an error message
# if there is no next featured number.

# Notes: write a check_number method that returns true if argument is divisible
# by 7 and has digits that occur no more than once and is odd. in featured method, add 1 to
# argument and check the resulting number with check_number method, if true,
# return resulting number. Else keep adding 1 until check_number method returns
# true.

def check_number(int)
  (int % 7 == 0) && (int.digits == int.digits.uniq) && (int.odd?)
end

def featured(int)
  loop do
    int += 1
    if int >= 9876543201
      return "There is no possible number that fulfills those requirements"
    end

    if check_number(int)
      return int
      break
    end
  end
end

# def highest_number(int)
#   number = 0
#   loop do
#     int += 1
#     if check_number(int)
#       number = int
#     end
#     break if int >= 9_999_999_999
#   end
#   number
# end

# p highest_number(899_999_987)
# => 9876543201
# Examples:

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
# 9_876_543_210

# LS:
# Solution
# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14
#     break if number >= 9_876_543_210
#   end

#   'There is no possible number that fulfills those requirements.'
# end

# Discussion
# For this exercise, a good way to start is to first make sure we meet the
# conditions of a "featured number". In this case, those are: odd, multiple of
# 7, and no duplicate digits.

# We make it so that we only have to increment by 14. So, that takes care of the
# second condition. We also make sure that the number we start at for
# incrementation is an odd multiple of 7. If we set it up like this, then every
# time we add 14 we'll consistently get the subsequent odd multiple of 7.

# As for checking if all digits are unique, we use a string array for that. This
# array contains the individual digits of number in string format. uniq is
# called on that array and if it is the same as the original array, then we know
# that all the digits in our number are unique.

# It is also important to return an error message if there is no "featured
# number" that occurs after the number that is passed in. That is handled by
# checking the highest possible unique value, and then breaking out of our loop
# if number is greater than that value.