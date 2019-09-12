# List of Digits

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Input: any integer >= 1
# Output: array of digits encompassing integer input

# Test: 
# puts digit(12345) == [1, 2, 3, 4, 5]      # => true
# puts digit(7) == [7]                      # => true
# puts digit(375290) == [3, 7, 5, 2, 9, 0]  # => true
# puts digit(444) == [4, 4, 4]              # => true

# Data: Input is an integer, output is an array

# Algorithm: take an integer and convert to string, then split string into separate digits, transform string digits into number digits

# 1. Solution with conversion to string and back

# Methods:
# Integer#to_s
# to_s(base=10) → string
# Returns a string containing the place-value representation of int with radix base (between 2 and 36).

# String#chars
# chars → an_array
# Returns an array of characters in str. This is a shorthand for str.each_char.to_a.
# If a block is given, which is a deprecated form, works the same as each_char.

# Array#map
# map {|item| block} → new_ary
# map → Enumerator
# Invokes the given block once for each element of self.
# Creates a new array containing the values returned by the block.
# See also Enumerable#collect.
# If no block is given, an Enumerator is returned instead.

def digit(integer)
  string = integer.to_s           # 12345 becomes "12345"
  string_split = string.chars     # "12345" becomes ["1", "2", "3", "4", "5"]
  string_split.map {|x| x.to_i}   # ["1", "2", "3", "4", "5"] becomes [1, 2, 3, 4, 5]
end

puts digit(12345) == [1, 2, 3, 4, 5]  
puts digit(7) == [7]                      
puts digit(375290) == [3, 7, 5, 2, 9, 0]  
puts digit(444) == [4, 4, 4] 

# 2. Solution using built in methods.

# Methods: 

# Integer#digits
# digits → array
# digits(base) → array
# Returns the digits of int's place-value representation with radix base (default: 10). The digits are returned as an array with the least significant digit as the first array element.

# Array#reverse
# reverse → new_ary
# Returns a new array containing self's elements in reverse order.


# def digit(integer)
#   integer.digits.reverse      # 12345 becomes [5, 4, 3, 2, 1] then [1, 2, 3, 4, 5] 
# end

# puts digit(12345) == [1, 2, 3, 4, 5]  
# puts digit(7) == [7]                      
# puts digit(375290) == [3, 7, 5, 2, 9, 0]  
# puts digit(444) == [4, 4, 4]    

# 3. Solution using brute force

# def digit(integer)
#   digits = []                
#   loop do
#     integer, remainder = integer.divmod(10) 
#     digits.unshift(remainder)
#     break if integer == 0
#   end
#   digits
# end

# Takes 12345, divides by 10 (equals 1234.5) and takes the floor, or removes the comma and rounds down, leaving 1234 and the remainder 5. The remainder is put into the beginning of the digits array. Loops until integer reaches 0.

# puts digit(12345) == [1, 2, 3, 4, 5]  
# puts digit(7) == [7]                      
# puts digit(375290) == [3, 7, 5, 2, 9, 0]  
# puts digit(444) == [4, 4, 4] 



