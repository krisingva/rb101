# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

#   Examples:

#   palindrome?('madam') == true
#   palindrome?('Madam') == false          # (case matters)
#   palindrome?("madam i'm adam") == false # (all characters matter)
#   palindrome?('356653') == true

# def palindrome?(string)
#  string == string.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# Further Exploration Write a method that determines whether an array is
# palindromic; that is, the element values appear in the same sequence both
# forwards and backwards in the array. Now write a method that determines
# whether an array or a string is palindromic; that is, write a method that can
# take either an array or a string argument, and determines whether that
# argument is a palindrome. You may not use an if, unless, or case statement or
# modifier.

# 1. def palindrome_array?(array)
#   array == array.reverse
# end

# method 1. works for both arrays and strings

# 2. Not using reverse method:
# def palin_array?(array)
#   copy_array = []
#   array.each { |y| copy_array << y.dup }
#   reverse_array = []
#   copy_array.each do |x|
#     reverse_array << copy_array.pop while copy_array.size > 0
#   end
#   array == reverse_array
# end

# p palin_array?(%w(a b c d e f g h)) == false
# p palin_array?(%w(1 2 3 4 3 2 1)) == true
# p palin_array?(%w(m a d a m)) == true
# p palin_array?(%w(M a d a m)) == false
# p palin_array?(%w(3 5 7 6 5 3)) == false

# 3. Not using reverse method but for string argument:
# def palin_string?(string)
#   array = string.split(//)
#   copy_array = []
#   array.each { |y| copy_array << y.dup }
#   reverse_array = []
#   copy_array.each do |x|
#     reverse_array << copy_array.pop while copy_array.size > 0
#   end
#   p array
#   p reverse_array
#   array == reverse_array
# end

# p palin_string?('madam') == true
# p palin_string?('Madam') == false
# p palin_string?("madam i'm adam") == false
# p palin_string?('356653') == true
# p palin_string?("3 5 7 6 5 3") == false

# p palin_string?('madam')
# p palin_string?('Madam')
# p palin_string?("madam i'm adam")
# p palin_string?('356653')
# p palin_string?("3 5 7 6 5 3")

# Combine 2. and 3. that works for both string and array

def palin_any?(any)
  if any.is_a? String
    array = any.split(//)
  else any.is_a? Array
    array = any
  end
  copy_array = []
  array.each { |y| copy_array << y.dup }
  reverse_array = []
  copy_array.each do |x|
    reverse_array << copy_array.pop while copy_array.size > 0
  end
  p array
  p reverse_array
  array == reverse_array
end

p palin_any?('madam')
p palin_any?('Madam')
p palin_any?("madam i'm adam")
p palin_any?('356653')
p palin_any?("3 5 7 6 5 3")
p palin_any?(%w(a b c d e f g h))
p palin_any?(%w(1 2 3 4 3 2 1))
p palin_any?(%w(m a d a m))
p palin_any?(%w(M a d a m))
p palin_any?(%w(3 5 7 6 5 3))
