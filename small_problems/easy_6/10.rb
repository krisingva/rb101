# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# Notes:
# Input: Positive integer
# Output: A display of integer amount of lines where the last line consists of
# integer amount of stars. The number of stars decreases by one as you go up a
# line with a space replacing the star on the left side.
# Use Integer#upto:
# 5.upto(10) {|i| print i, " " }   #=> 5 6 7 8 9 10


# def triangle(int)
#   1.upto(int) do |i|
#     puts (" " * (int - i)) + "*" * i
#   end
# end

# triangle(5)
# triangle(9)

# Solution
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

# Discussion
# For this problem we have an inverse relationship between the number
# of spaces and the number of stars that should be printed on each line. If we
# are on the first line, we print num - 1 spaces and 1 star. If we are on the
# second line we print num - 2 spaces and 2 stars. And so forth.

# We do just that by initially setting stars to 1, and spaces to num -1. On each
# iteration, we output the number of spaces and stars, and then we decrement the
# number of spaces and increment the number of stars. This will give us the
# desired result.

# Further Exploration
# Try modifying your solution so it prints the triangle upside down from its
# current orientation. Try modifying your solution again so that you can display
# the triangle with the right angle at any corner of the grid.

# Use: 5.times {|i| print i, " " }   #=> 0 1 2 3 4

def up_triangle(int)
  int.times do |i|
    puts " " * i + "*" * (int-i)
  end
end

up_triangle(5)

