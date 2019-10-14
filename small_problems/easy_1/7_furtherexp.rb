# Stringy Strings Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1. The
# length of the string should match the given integer.

# Examples:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.

# Input: Positive integer
# Output: String of 1 and 0, the length matching the input integer

# Algorithm: Create an array using the input integer as an argument for array
# length.

# for even numbered index, assign value of element as '1'
# for odd numbered index, assign value of element as '0'

# Use join method to create a string from array elements.

# Methods:

# Array.new
# An array can also be created by explicitly calling Array.new with zero, one
# (the initial size of the Array) or two arguments (the initial size and a
# default object).
# ary = Array.new    #=> []
# Array.new(3)       #=> [nil, nil, nil]
# Array.new(3, true) #=> [true, true, true]
# Note that the second argument populates the array with references to the same
# object. Therefore, it is only recommended in cases when you need to
# instantiate arrays with natively immutable objects such as Symbols, numbers,
# true or false. To create an array with separate objects a block can be passed
# instead. This method is safe to use with mutable objects such as hashes,
# strings or other arrays:
# Array.new(4) {Hash.new}    #=> [{}, {}, {}, {}]
# Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]

# Array.map.with_index
# map {|item| block} → new_ary
# map → Enumerator
# Invokes the given block once for each element of self.
# Creates a new array containing the values returned by the block.
# See also Enumerable#collect.
# If no block is given, an Enumerator is returned instead.
# a = [ "a", "b", "c", "d" ]
# a.collect {|x| x + "!"}           #=> ["a!", "b!", "c!", "d!"]
# a.map.with_index {|x, i| x * i}   #=> ["", "b", "cc", "ddd"]
# a                                 #=> ["a", "b", "c", "d"]

# Array#join
# join(separator=$,) → str
# Returns a string created by converting each element of the array to a string,
# separated by the given separator. If the separator is nil, it uses current $,.
# If both the separator and $, are nil, it uses an empty string.
# [ "a", "b", "c" ].join        #=> "abc"
# [ "a", "b", "c" ].join("-")   #=> "a-b-c"

def stringy(integer, optional = 1)
  array = Array.new(integer)
  # creates a new array the size of the argument (elements = nil)

  if optional == 0
    new_arr = array.map.with_index do |value, index|
      if
        index.even?
        value = '0'
      else
        value = '1'
      end
    end

  else
    new_arr = array.map.with_index do |value, index|
      if
        index.even?
        value = '1'
      else
        value = '0'
      end
    end

  end

  # creates an array with alternating '1' and '0' as elements
  new_arr.join
  # combines each element of array into one string
end

puts stringy(7,0)
puts stringy(7)
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'



# LS Solution:
# def stringy(size)
#   numbers = []

#   size.times do |index|
# iterates over block 'size' times
#     number = index.even? ? 1 : 0
# ternary operator that returns 1 if index.even? is true, otherwise 0
#     numbers << number
# appends the value from the previous expression to the numbers array
#   end

#   numbers.join
# combines each element of array into one string
# end