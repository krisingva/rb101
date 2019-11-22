# Create a method that takes two integers as arguments. The first argument is a
# count, and the second is the first number of a sequence that your method will
# create. The method should return an Array that contains the same number of
# elements as the count argument, while the values of each element will be
# multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or
# greater, while the starting number can be any integer value. If the count is
# 0, an empty list should be returned.

def sequence(num1, num2)
  arr = []
  1.upto(num1) do |i|
    arr << (num2 * i)
  end
  arr
end

# LS:
# Solution
# Solution 1

# def sequence(count, first)
#   sequence = []
#   number = first

#   count.times do
#     sequence << number
#     number += first
#   end

#   sequence
# end

# Solution 2

# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end

# Discussion
# In the first solution, we begin by setting the scene. We initialize a sequence
# variable as an empty array and a number variable that we set to the value of
# first, as it will be the first element of the sequence.

# We then use the Integer#times method. It will execute the content of the block
# the number of times specified by the integer. In this case, on each iteration,
# we first append number to our sequence array and then increment number by the
# value of first. When all iterations are completed, the sequence array contains
# all the elements needed and we just have to return it.

# Our second solution is more concise, and maybe more difficult to parse. First
# we create a Range from 1 to count, as we realize that the array our method
# needs to return will have that many elements in it. Note that ranges have
# access to Enumerable methods, such as map. You don't need to convert it to an
# array before, it will be treated as one. Let's look at a simple example:

# irb(main):008:0> (1..5).map { |num| num }
# => [1, 2, 3, 4, 5]
# Within the block we then simply multiply the index (that is, each number of
# the range) by the sequential multiplier which gives us our value for each
# position in the array.

# Examples:

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []