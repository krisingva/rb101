# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

# My notes:
# Space is included in ASCII string value

# String#ord:
# ord → integer
# Returns the Integer ordinal of a one-character string.

# "a".ord         #=> 97

def ascii_value(string)
  return 0 if string.size == 0
  string.split(//).map { |x| x.ord }.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# LS:
# Solution
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end
# Discussion
# There isn't much to say here. We initialize the sum to 0 (which takes care of
# the empty string case in addition to giving us a starting value), then add
# String#ord for every character to that sum. Finally, we return the sum.

# Further Exploration
# There is an Integer method such that:

# char.ord.mystery == char
# where mystery is our mystery method. Can you determine what method name should
# be used in place of mystery? What happens if you try this with a longer string
# instead of a single character?

# Answer: mystery = chr
# p "A".ord.chr
# => "A"
# p "anna".ord.chr
# => "a"
# It will only give the first character