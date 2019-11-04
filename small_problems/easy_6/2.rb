# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# Problem:
# Input: Array with string elements
# Output: Another array with the string elements of original array with all
# vowels removed
# Notes:
# 1. Iterate through array elements, use Array#each
# 2. Remove certain letters from string, use String#gsub to substitute lower
#    case and upper case vowels with empty string
# 3. String with remaining letters added to new array, use Array#<<



def remove_vowels(array)
  new_array = []
  array.each do |x|
    new_array << x.gsub(/[aeiouAEIOU]/, '')
  end
  new_array
end

# Example:

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# LS:
# Uses Array#map for transformation and to return a new array with transformed
# elements. Uses String#delete to delete vowels.

# Solution
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end

# Discussion
# Our solution uses String#delete to remove all of the vowels from each string.
# We use map to iterate through the array since it is ideal for transformations
# like this.