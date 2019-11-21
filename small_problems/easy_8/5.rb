# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Notes:
# Start with index 0 of string.
# Check if substring spanning index 0 and index 1 constitute a palindrome.
# If yes, add to results array.
# Check if substring spanning index 0 through index 2 constitutes a palindrome.
# Continue like this spanning the entire string (last iteration would be
# spanning index 0 to index -1).
# Start with index 1 of string.
# Repeat iteration process scanning substrings containing index 1 to index 2 and
# so on, last iteration for index 1 through index -1.
# Method substrings does the iterating process correctly for this problem.
# Have to add a check for palindrome (substring.reverse == substring), and if
# that returns true for any substring, then add it to results array.

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

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

def palindromes(str)
  results_array = []
  substring_array = substrings(str)
  substring_array.select { |substr| substr.size > 1 }.each do |substring|
    results_array << substring if substring.reverse == substring
  end
  results_array
end

# LS:

# def palindromes(string)
#   all_substrings = substrings(string)
#   results = []
#   all_substrings.each do |substring|
#     results << substring if palindrome?(substring)
#   end
#   results
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end

# Discussion
# Again, this problem is much easier if you use the method from the previous
# exercise. Building this method from scratch is sure to leave you with an
# aching head.

# We'll use a helper method here, palindrome?, to test whether any given string
# is a palindrome. Note that we need to verify the size of the string as well as
# its reversibility.

# The main method just calls substrings from the previous exercise, and then
# constructs a list of all of the return values that are palindromic.

# Further Exploration
# Can you modify this method (and/or its predecessors) to ignore
# non-alphanumeric characters and case? Alphanumeric characters are alphabetic
# characters(upper and lowercase) and digits.

# Examples:

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
