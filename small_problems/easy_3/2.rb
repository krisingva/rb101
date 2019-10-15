# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about
# validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

puts "==> Enter the first number:"
first_number = gets.chomp.to_i
puts "==> Enter the second number:"
second_number = gets.chomp.to_i

addition = first_number + second_number
subtraction = first_number - second_number
product = first_number * second_number
quotient = first_number / second_number
remainder = first_number % second_number
power = first_number ** second_number

puts "==> #{first_number} + #{second_number} = #{addition}"
puts "==> #{first_number} - #{second_number} = #{subtraction}"
puts "==> #{first_number} * #{second_number} = #{product}"
puts "==> #{first_number} / #{second_number} = #{quotient}"
puts "==> #{first_number} % #{second_number} = #{remainder}"
puts "==> #{first_number} ** #{second_number} = #{power}"

# LS Solution condeses:
# addition = first_number + second_number
# puts "==> #{first_number} + #{second_number} = #{addition}"
# to:
# prompt("#{first_number} + #{second_number} = #{first_number + second_number}")

# Discussion
# There are some edge cases to consider in this exercise. We have to be careful
# of not having a second number that is zero. What if we wanted to use floats
# instead of integers? How does this change this problem?
# Floats could be used in:
# number = gets.chomp.to_f
# It would force the answers to have decimals.