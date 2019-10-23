# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

# Examples:

# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# LS:
# Discussion
# There are many ways to shorten the logic of the method. For example, we could
# use a ternary operator instead of the if/else/end construct. Further, we could
# use string interpolation rather than concatenation. But those are minor
# improvements and are not necessary. Clarity is more important than density.

# There are also other algorithms to use other than the if/else logic. For
# example, we could put string1 and string2 in an array, and then sort the array
# according to the element's length. Then just concatenate the elements in the
# array, knowing that the shortest one is first.

# Example:

# def short_long_short(string1, string2)
#   arr = [string1, string2].sort_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end
#   This method is perhaps too clever for its own good and makes it hard to
#   understand what this method is trying to do. Though a little longer, the
#   if/else/end solution from earlier is much clearer.

