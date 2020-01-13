# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def strip_zeros(n)
  val = n.to_s.sub(/\.0+$/, '')
  (val.to_f % 1) > 0 ? val.to_f : val.to_i
end

def letter_percentages(string)
  hsh = {}
  total = string.size.to_f
  lower = (string.count "a-z").to_f
  lower_percent = (lower/total)*100
  upper = (string.count "A-Z").to_f
  upper_percent = (upper/total)*100
  neither = total - lower - upper
  neither_percent = (neither/total)*100
  hsh[:lowercase] = strip_zeros(lower_percent)
  hsh[:uppercase] = strip_zeros(upper_percent)
  hsh[:neither] = strip_zeros(neither_percent)
  hsh
end

# Examples

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# LS:
# Solution
# def letter_percentages(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#   percentages = { lowercase: [], uppercase: [], neither: [] }
#   characters = string.chars
#   length = string.length

#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

#   calculate(percentages, counts, length)

#   percentages
# end

# def calculate(percentages, counts, length)
#   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
#   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
#   percentages[:neither] = (counts[:neither] / length.to_f) * 100
# end

# Discussion
# Looking at this, we can see that there is quite a bit going on. Let's break it
# up into pieces. This should help with understanding the overall problem and
# solution.

# First, we set up the initial part of the data we want to create. This method
# is expected to return a hash of character ratios, hence the hash called
# percentages. There's also a counts hash to store the number of characters for
# lowercase, uppercase, and neither groups. Storing this information will act as
# an intermediary step towards calculating our percent character ratios later
# on.

# We use the method, Array#count to find the number of occurrences of each type
# of character. Then, we pass our stored counts and percentages hashes to the
# calculate method to compute the ratios asked for by this problem.

# Remember, hashes are a bit complex. If you pass a hash into a method, and then
# alter a value in that hash, that altered value will then continue to persist
# even outside that method.

# Further Exploration
# If we passed a string 'abcdefGHI' as an argument to our method call the
# solution would be {:lowercase=>66.66666666666666,
# :uppercase=>33.33333333333333, :neither=>0.0}. It would be nicer if we could
# round these float numbers so that our solution looks like this
# {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}. Try creating that
# solution on your own.

