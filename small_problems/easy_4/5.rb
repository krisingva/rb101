# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9
# + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Input: int > 1
# Output: the sum of all factors of 3 and 5 between 1 and int

# Determine all numbers that lie in the range of 1 and input integer that meet
# the following requirement:
# number % 3 == 0 or number % 5 == 0
# Make an array of numbers going from 1 to input integer
# Iterate over array and if item meets requirement, push to new array
# Sum up the numbers of new array

# def multisum(int)
#   array = (1..int).to_a
#   new_array = array.select { |x| x % 3 == 0 || x % 5 == 0 }
#   new_array.sum
# end

# shortest version:
def multisum(int)
  (1..int).to_a.select { |x| x % 3 == 0 || x % 5 == 0 }.sum
end

# Examples:

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# LS:
# Solution
# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end
# Discussion
#   Our solution begins with a multiple? method that returns true if the given
#   number is an exact multiple of divisor, false if it's not. This method isn't
#   necessary, but it makes the multisum a bit more readable.

# multisum does nothing fancy; it rushes headlong into the problem, and comes
# out the other end with the correct result. It adds each value that is a
# multiple of 3 or 5 in the range to the sum variable.

