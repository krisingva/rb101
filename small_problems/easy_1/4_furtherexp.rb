# How many?

# Write a method that counts the number of occurrences of each element in a
# given array.

vehicles = [
  'Car', 'Car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck',
]

# The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print
# each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# Input: Array
# Output: Hash with vehicle type as key and occurrences as value

# Algorithm: Iterate over array to find unique items and place in a new array.
# Those items will become the keys for the output hash. For original array,
# count each item and create a new array with the count. The items in count
# array will become the values for the output hash. Then print the value of each
# key in hash.

# Methods:
# uniq → new_ary
# uniq {|item| ...} → new_ary
# Returns a new array by removing duplicate values in self.
# If a block is given, it will use the return value of the block for comparison.
# It compares values using their hash and eql? methods for efficiency.
# self is traversed in order, and the first occurrence is kept.

# count → int
# count(obj) → int
# count {|item| block} → int
# Returns the number of elements.
# If an argument is given, counts the number of elements which equal obj using
# ==.
# If a block is given, counts the number of elements for which the block returns
# a true value.

# ary[index] → obj or nil
# Element Reference — Returns the element at index

# unshift(obj, ...) → ary
# prepend(obj, ...) → ary
# Prepends objects to the front of self, moving other elements upwards. (KI:
# added to front of array)

# zip(arg, ...) → new_ary
# zip(arg, ...) {|arr| block} → nil
# Converts any arguments to arrays, then merges elements of self with
# corresponding elements from each argument. This generates a sequence of
# ary.size n-element arrays, where n is one more than the count of arguments. If
# the size of any argument is less than the size of the initial array, nil
# values are supplied. If a block is given, it is invoked for each output array,
# *** otherwise an array of arrays is returned ***.

# Hash[ key, value, ... ] → new_hash
# Hash[ [ [key, value], ... ] ] → new_hash
# Hash[ object ] → new_hash
# Creates a new hash populated with the given objects.
# Similar to the literal { key => value, ... }. In the first form, keys and
# values occur in pairs, so there must be an even number of arguments. The
# second and third form take a single argument which is either an array of
# key-value pairs or an object convertible to a hash.

def count_occurrences(vehicles)
  numbers = []
  vehicles.each do
    |element| element.downcase!
  end
  type = vehicles.uniq
  # creates type = ['car', 'truck', 'SUV', 'motorcycle']
  counter = type.count
  # creates counter = 4

  while counter > 0 do
    index = counter - 1
    # creates index that starts at 3 (index of last elem. in type)
    number = vehicles.count(type[index])
    # uses last element of type as argument for count of that element in
    # vehicles array, the count is stored in number
    numbers.unshift(number)
    # number is used as argument to populate the last element of the numbers
    # array
    counter -= 1
  end

  result_hash = Hash[type.zip(numbers)]
  # creates [["car", 4], ["truck", 3], ["SUV", 1], ["motorcycle", 2]] and
  # converts each internal array into hash key value pairs
  result_hash.each { |key, value| puts "#{key} => #{value}" }
  # prints the output
end

count_occurrences(vehicles)

# LS Solution:

# def count_o(array)
#   occ = {}
# creates an empty hash

#   array.each do |element|
# iterates over array and takes each element
#     occ[element] = array.count(element)
#   populates the hash with array element as key and sets the value as the count
#   of each array element
#   end

#   occ.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# count_o(vehicles)