# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# Notes:
# Input: String consisting of letters, numbers and other characters.
# Output: Hash with 3 key-value pairs, the first the count of lowercase letters
# in input string, the second the count of uppercase letters, the third the
# count of other characters.
# Rules:
# 1. Anything other than alphabetical characters are considered other or neither
#    (third key-value pair in output hash), including space.
# 2. Input string can be empty.
# Algorithm:
# 1. Initialize a results_hash with the three keys.
# 2. Input string: count how many characters are lowercase alphabetical
#    characters, use the count to create a value for first key in results_hash.
#    Repeat for uppercase characters and the second key value. Use String#count:
# a.count "ej-m"
# 3. Subtract lowercase count and uppercase count from string size to get the
#    value for third key value.

def letter_case_count(string)
  results_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  results_hash[:lowercase] = string.count "a-z"
  results_hash[:uppercase] = string.count "A-Z"
  results_hash[:neither] = (string.size) - (string.count "a-z") - (string.count "A-Z")
  results_hash
end

# LS:

# Solution 1

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a

# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }

#   string.chars.each do |char|
#     if UPPERCASE_CHARS.include?(char)
#       counts[:uppercase] += 1
#     elsif LOWERCASE_CHARS.include?(char)
#       counts[:lowercase] += 1
#     else
#       counts[:neither] += 1
#     end
#   end

#   counts
# end

# Solution 2

# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

# Discussion
# This method is expected to return a hash of character counts.

# In the first solution, we begin by initializing two constants containing the
# uppercase and lowercase letters of the alphabet. Then, after initializing a
# counts hash with the appropriate keys and default values of zero, we simply
# iterate over each character of the string passed in as an argument and update
# each count as needed.

# We take a different approach in our second solution. We first initialize an
# empty counts hash and then use Array#count to find the number of occurrences
# of lowercase, uppercase, and all other characters. In the block following the
# count method invocation, we use the String#=~ method to match each character
# of the string against a pattern specified by a regular expression. The block
# will return a truthy value if there is a match, nil otherwise.

# Remember that a problem can always be solved in different ways. Don't worrry
# if you don't know regular expressions yet. Just use the tools you are familiar
# with.

# In the second solution, we use regular expressions to count certain types of
# characters. We'll explain things a bit here for those who aren't familiar with
# regex:

# char =~ /[a-z]/ : This checks if the character is a lowercase letter between a
# and z. char =~ /[A-Z]/ : This checks if the character is an uppercase letter
# between A and Z. char =~ /[^A-Za-z]/ : This checks if the character is neither
# an uppercase letter nor a lowercase letter.

# Examples

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
