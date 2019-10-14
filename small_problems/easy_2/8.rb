# Sum or Product of Consecutive Integers
# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# PEDAC:
# input: an integer greater than 0, no need to validate
# input operation: either sum or product, no  need to validate
# output: an integer greater than 0,
# output_sum: the sum of all numbers between 1 and input integer
# output_product: the product of all numbers between 1 and input integer

# Need to get the range between 1 and the input integer.

# Edge cases: input is 1
# test cases: input is 5, sum of range is 15
#             input is 6, product of range is 720

# Data structure: Either range or array

# Algorithm: iterate over items in collection, for each iteration either add the
# item to a total (using +=) or add the value of current total multiplied by
# item to total (using *=)

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i
array = (1..number).to_a
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

if operation == "s"
  operation = "sum"
  total = 0
  array.each { |n| total += n}
  puts "The #{operation} of the integers between 1 and #{number} is #{total}."
elsif operation == "p"
  operation = "product"
  total = 1
  array.each { |n| total *= n}
  puts "The #{operation} of the integers between 1 and #{number} is #{total}."
else
  puts "invalid operation"
end

# LS Solution (uses Int#upto method and puts the sum and product computing into
# methods):
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end

# Further Exploration
# The compute_sum and compute_product methods are simple and should be familiar.
# A more rubyish way of computing sums and products is with the
# Enumerable#inject method. #inject is a very useful method, but if you've never
# used it before, it can be difficult to understand.

# Take some time to read the documentation for #inject. (Note that all
# Enumerable methods can be used on Array.) Try to explain how it works to
# yourself.

# Try to use #inject in your solution to this problem.

# puts ">> Please enter an integer greater than 0:"
# number = gets.chomp.to_i
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp.downcase

# if operation == "s"
#   operation = "sum"
#   total = 1.upto(number).inject { |sum, n| sum + n }
#   puts "The #{operation} of the integers between 1 and #{number} is #{total}."
# elsif operation == "p"
#   operation = "product"
#   total = 1.upto(number).inject { |product, n| product * n }
#   puts "The #{operation} of the integers between 1 and #{number} is #{total}."
# else
#   puts "invalid operation"
# end
