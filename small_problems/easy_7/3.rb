# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Notes:
# Input: string of one or more words
# Output: a new string with each word capitalized
# Rules:
# 1. A word is any sequence of characters separated by spaces from other words.
# 2. If the first character of the word is not an alphabetical character, then
#    there is no change in word
# Algorithm:
# 1. Take input string and convert to array with elements as each word in
#    string. Use String#split
# 2. Iterate over array and return a new array with first characters
#    capitalized. Use Array#map, String#capitalize
# 3. Transform array to string with Array#join(" ")

def word_cap(string)
  string.split.map { |x| x.capitalize }.join(" ")
end

# LS:

# Solution
# def word_cap(words)
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   words_array.join(' ')
# end

# We can also write this more succinctly as:

# def word_cap(words)
#   words.split.map(&:capitalize).join(' ')
# end

# Discussion
# In the second solution, (&:method_name) is shorthand notation for { |item|
# item.method_name }. Thus, &:capitalize translates to:

# do |word|
#   word.capitalize
# end
#   We can use this shorthand syntax with any method that has no required
#   arguments.

# Further Exploration
# Ruby conveniently provides the String#capitalize method to capitalize strings.
# Without that method, how would you solve this problem? Try to come up with at
# least two solutions.

# Examples

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'