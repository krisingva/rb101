# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# Notes:
# Iterate through string and when there is alphabetical character determine
# whether it is uppercase. If true for all, return true.

def uppercase?(str)
  alpha = str.chars.select do |char|
    char =~ /[a-z]/i
  end
  alpha.all? { |i| i =~ /[A-Z]/ }
end

# LS:
# Solution
# def uppercase?(string)
#   string == string.upcase
# end

# Discussion
# The easiest way to solve this problem is to realize that the condition "all of
# the alphabetic characters...are uppercase" is true only if the string is not
# altered by converting it to all uppercase. Thus, all we need to is compare
# string with string.upcase.

# Further Exploration
# Food for thought: in our examples, we show that uppercase? should return true
# if the argument is an empty string. Would it make sense to return false
# instead? Why or why not?

# Examples:

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true