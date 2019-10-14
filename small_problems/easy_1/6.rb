# Reverse It (Part 2)

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each String will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.

# Examples:
# puts reverse_words('Professional')
# => lanoisseforP
# puts reverse_words('Walk around the block')
# => Walk dnuora the kcolb
# puts reverse_words('Launch School')
# => hcnuaL loohcS

# Input: string of 1 to multiple words separated by space
# Output: same string with words containing 5 or more characters reversed

# Algorithm: Convert string to array delimited by spaces. Count the characters
# in each element of array and reverse the word if 5 or more. Convert back to
# string.

# Methods:
# String#split
# split(pattern=nil, [limit]) → an_array

# Array#map!
# map! {|item| block } → ary
# map! → Enumerator
# Invokes the given block once for each element of self, replacing the element
# with the value returned by the block.
# See also Enumerable#collect.
# If no block is given, an Enumerator is returned instead.

# String#length
# length → integer
# Returns the character length of str.

# String#reverse
# reverse → new_str
# Returns a new string with the characters from str in reverse order.

# Array#join
# join(separator=$,) → str
# Returns a string created by converting each element of the array to a string,
# separated by the given separator. If the separator is nil, it uses current $,.
# If both the separator and $, are nil, it uses an empty string.

def reverse_words(string)
  array = string.split

  array.map! do |element|
    if element.length >= 5
      element.reverse
    else
      element
    end
  end

  array.join(' ')
end

puts reverse_words('Hi there is nobody here')
puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

# LS solution:
# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end




