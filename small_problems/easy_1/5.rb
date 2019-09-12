# Reverse It (Part 1)

# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Examples:
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# The tests above should print true

# Input: string of 0 to multiple words separated by space
# Output: same string with the order of the words reversed

# Algorithm: Separate the words into elements of an array. Reverse the order of elements in the array. Change back into string.

# Methods:
# String#split
# split(pattern=nil, [limit]) → an_array

# Array#reverse
# reverse → new_ary
# Returns a new array containing self's elements in reverse order.

# Array#join
# join(separator=$,) → str
# Returns a string created by converting each element of the array to a string, separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses an empty string.

def reverse_sentence(string)
  array = string.split
  rev_arr = array.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# LS Solution:

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end




