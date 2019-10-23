# Further Exploration: The order in which you perform tests for a leap year
# calculation is important. For what years will leap_year? fail if you rewrite
# it as:

# def leap_year?(year)
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end

# My answer: Will lead to failure of detecting a valid leap year if divisible by 100 and divisible by 400

# Can you rewrite leap_year? to perform its tests in the opposite order of the
# above solution? That is, test whether the year is divisible by 4 first, then,
# if necessary, test whether it is divisible by 100, and finally, if necessary,
# test whether it is divisible by 400. Is this solution simpler or more complex
# than the original solution?

def leap_year?(year)
  if year % 4 != 0
    false
  elsif year % 100 != 0
    true
  else
    year % 400 == 0
  end
end

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