# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

# Notes:
# input: array containing elements of numerical strings
# output: same array ordered with string with highest numerical value first and
# string with lowest numerical value last.
# 1. Iterate through array (#map) and return an array with all elements
#    converted to integer (#to_i).
# 2. On that returned array, use Array#sort { |a, b| b <=> a } to get the
#    integers in descending order. Returns a new array.
# 3. Iterate over the new array (#map) and transform each element back into
#    string (#to_s).

def sort_descending(array)
  array.map(&:to_i).sort { |a, b| b <=> a }.map(&:to_s)
end

p sort_descending(arr)

# LS (uses #to_i within the #sort implementation):
# arr.sort do |a,b|
#   b.to_i <=> a.to_i
# end
# => ["11", "10", "9", "8", "7"]

# The key here is understanding that strings are compared character by
# character, so '11' will be evaluated to be lesser than '7'. In order to
# compare the strings as integers, we need to convert them to integers within
# the block.

# The second part of solving this problem is sorting the array in reverse order.
# To do this we simply switch the order of b and a in the block.
