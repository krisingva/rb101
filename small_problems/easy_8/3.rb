# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

def substrings_at_start(string)
  arr = []
  substring = ''
  string.chars.each do |char|
    substring += char
    arr << substring
  end
  arr
end

# Examples:

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# LS:

# def substrings_at_start(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end

# Discussion
# This problem is straightforward; all we need to do is to iterate through the
# characters of a string, returning each substring that starts at the beginning
# of the string, and ends with the character we are currently iterating.

# The hardest part of this problem is determining the correct looping structure
# to use; we decided to use upto, but any looping structure that works would be
# fine.

# The expression string[0..index] may need a bit of explanation; it simply
# returns a substring of string. The substring starts at position 0, and ends at
# position index.

