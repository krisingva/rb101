# In the modern era under the Gregorian Calendar, leap years occur in every year
# that is evenly divisible by 4, unless the year is also divisible by 100. If
# the year is evenly divisible by 100, then it is not a leap year unless the
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that
# takes any year greater than 0 as input, and returns true if the year is a leap
# year, or false if it is not a leap year.

# Input: int > 0
# Output: true or false
# true if int % 4 == 0 && int % 100 != 0
# true if int % 4 == 0 && int % 100 == 0 && int % 400 == 0

def divisible_by_four?(int)
  int % 4 == 0
end

def divisible_by_hundred?(int)
  int % 100 == 0
end

def divisible_by_fourhundred?(int)
  int % 400 == 0
end


def leap_year?(int)
  if divisible_by_four?(int) == true && divisible_by_hundred?(int) == false
    true
  elsif divisible_by_four?(int) == true && divisible_by_hundred?(int) == true && divisible_by_fourhundred?(int) == true
    true
  else
    false
  end
end

# def leap_year?(int)
#   if divisible_by_four?(int) == true
#     if divisible_by_hundred?(int) == false
#       true
#     elsif divisible_by_hundred?(int) == true && divisible_by_fourhundred?(int) == true
#       true
#     else divisible_by_hundred?(int) == true && divisible_by_fourhundred?(int) == false
#       false
#     end
#   else divisible_by_four?(int) == false
#     false
#   end
# end

# def leap_year?(int)
#   true if divisible_by_four?(int) unless divisible_by_hundred?(int)
#   false if divisible_by_hundred?(int) unless divisible_by_fourhundred?(int)
# end

# p divisible_by_fourhundred?(400)
# p divisible_by_fourhundred?(3600)
# p divisible_by_fourhundred?(4000)
# p divisible_by_fourhundred?(1)
# p divisible_by_fourhundred?(33)
# p divisible_by_fourhundred?(555555)

# Examples:

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# LS:
# Solution
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end
# A shorter solution

# def leap_year?(year)
#   (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
# end
# Discussion
#   The first solution takes this one step at a time by testing for the least
#   common cases first; years divisible by 400, and years divisible by 100. If
#   the year is anything else, then it is a leap year if it divisible by 4.

# The second solution is more idiomatic, but also a little harder to read. It
# is, in effect, identical to the first solution, although the tests are turned
# around a little bit.

