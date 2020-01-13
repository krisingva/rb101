# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

def sum_square_difference(int)
  sum = 0
  1.upto(int) { |x| sum += x }
  square_sum = 0
  1.upto(int) { |x| square_sum += x**2 }
  sum**2 - square_sum
end

# Examples:

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

# LS:
# Solution
# def sum_square_difference(n)
#   sum = 0
#   sum_of_squares = 0

#   1.upto(n) do |value|
#     sum += value
#     sum_of_squares += value**2
#   end

#   sum**2 - sum_of_squares
# end

# Discussion
# The hardest part of this exercise is just figuring out what is meant by square
# of the sum and sum of the squares. Our first example demonstrates this clearly
# with a comment that shows how we arrive at the answer.

# The primary solution shows all of the details of this operation; we loop
# through all of the integers between 1 and n, and compute the sum and sum of
# squares as we go. At the end, we subtract the sum of the squares from the
# square of the sum.

