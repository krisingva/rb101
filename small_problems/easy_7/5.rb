# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# Notes:
# Input: A string with any number of any kind of character
# Output: A new string with the characters from original string but with
# alternating uppercase and lowercase characters
# Rules:
# 1. If string transformed to array, change all even indexed characters to
#    uppercase, all odd indexed characters to lowercase, unless the characters
#    are not alphabetical, then no change.
# Algorithm:
#
# 1. Initialize an empty array arr
# 2. Transform string to array using String#chars
# 3. Iterate through characters
# 3.a. if character not alphabetical, add character to arr
# 3.b. if character even-indexed, add character upcased (char.upcase) to arr
# 3.c. if character odd-indexed, add character downcased (char.downcase) to arr
# 4. Transform arr to string using Array#join

# def staggered_case(string)
#   arr = []
#   string.chars.each_with_index do |char, idx|
#     if char =~ /^[a-z]^[A-Z]/
#       arr << char
#     elsif idx.even?
#       arr << char.upcase
#     else idx.odd?
#       arr << char.downcase
#     end
#   end
#   arr.join
# end

# Example:

# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# LS (doesn't create an array, does everything in string form):
# Solution
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# Discussion
# This solution simply iterates through the String while building another String
# one character at a time, either uppercasing or lowercasing each character as
# needed. Note that we never need to actually test whether a character is upper-
# or lowercase, or even whether it is alphabetic: the upcase and downcase
# methods handle this for us.

# To keep track of whether we want to upcase or downcase each character, we
# define a boolean variable need_upper that starts out as true. Each time we
# process a character, we upcase it or downcase it based on the current state of
# need_upper. We then toggle need_upper from true to false or false to true
# using need_upper = !need_upper.

# Further Exploration
# Can you modify this method so the caller can request that the first character
# be downcased rather than upcased? If the first character is downcased, then
# the second character should be upcased, and so on.

# Hint: Use a keyword argument.

def staggered_case(string, first_up)
  result = ''
  need_upper = first_up
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Example:

#p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', false) == 'aLl_cApS'
#p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
