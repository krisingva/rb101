# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will
# occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:

def substrings_at_start(string)
  arr = []
  substring = ''
  string.chars.each do |char|
    substring += char
    arr << substring
  end
  arr
end

def substrings(str)
  new_array = []
  (str.size).times do |count|
    new_array << substrings_at_start(str)
    str = str[1..-1]
  end
  new_array.flatten
end

# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# LS:

# Solution
# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(substrings_at_start(this_substring))
#   end
#   results
# end

# Discussion
# This problem is a lot easier if you use the substrings_at_start method from
# the previous exercise. Without that method, it can be really hard to wrap your
# head around the requirements and come up with a working solution.

# The solution boils down to just repeatedly running substrings_at_start on
# increasingly smaller substrings of string, starting with the 1st character,
# then the 2nd character, and so on. The results are all concatenated to our
# results Array which is subsequently returned to the caller.

# Our substrings_at_start method returns substrings in order from shortest to
# longest, and substrings itself works from left to right in the string. Our
# results are thus arranged in the desired sequence.