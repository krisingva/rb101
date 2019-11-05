# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays. The
# results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Notes:
# Input: Two arrays, can be of different sizes, neither empty. Elements are
# integers.
# Output: A new array, containing every possible product of the two input array
# elements. New array sorted by increasing value.
# Algorithm:
# 1. Initialize an empty new_array
# 2. Initialize a counter set for 0
# 3. Start a loop
# 3.a. Break loop when counter == arr2.size
#    3.b. Iterate through first array and multiply each element with second
#    array index[counter]. Add each product to new_array
# 3.c. add 1 to counter
# 4. return new_array.sort

def multiply_all_pairs(arr1, arr2)
  results = []
  counter = 0
  loop do
    break if counter == arr2.size
    arr1.each do |x|
      results << x * arr2[counter]
    end
    counter += 1
  end
  results.sort
end

# Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# LS:

# Solution
# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end

# Discussion
# For the above solution we have two iterators, one for the first array and one
# for the second. We want all the different combinations of multiples,
# duplicates included. To do this, we need to iterate through each item in the
# first array, and then multiply it by each item in the second array. Finally,
# we sort our array of products and return that array.

# Just for fun, here is a more compact solution.

# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
# end

# Further Exploration
# What do you think? Did you go about solving this exercise differently? What
# method did you end up using?