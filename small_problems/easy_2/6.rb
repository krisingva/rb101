# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

array = (1..99).to_a
odd_array = array.select { |i| i % 2 != 0 }
puts odd_array

# LS solution:
# value = 1
# while value <= 99
#   puts value
#   value += 2
# end
# Discussion
# There are a variety of different ways to approach this problem, so don't be
# worried if your solution is significantly different.

# Our solution simply takes a very basic approach of counting up from 1 to 99 by
# 2s, and printing each value.

# Further Exploration
# Repeat this exercise with a technique different from the one you just used,
# and different from the solution shown above. You may want to explore the use
# Integer#upto or Array#select methods, or maybe use Integer#odd?

# Using the Integer#upto method and Integer#odd method:

# 1.upto(99) { |i| puts i if i.odd? }



