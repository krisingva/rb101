# Write a method that can rotate the last n digits of a number. For example:

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want.
# (Recommended!)

# You may assume that n is always a positive integer.

def rotate_rightmost_digits(int, num)
  arr = int.digits.reverse
  dupl_arr = arr.clone
  rotating_element = dupl_arr[-num]
  dupl_arr.delete(rotating_element)
  dupl_arr << rotating_element
  dupl_arr.join.to_i
end

# LS:
# Solution

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# Discussion
# Don't be alarmed if your solution is considerably longer than our solution, so
# long as it produces the correct results.

# Since we will be working with rotate_array, we need an array. To do this, we
# simply convert the number to a string, and then split it out into its
# individual digits. That's the easy part.

# Now the tricky part. First, there's this:

# all_digits[-n..-1]
# This construct returns the last n elements of the all_digits array. It's a
# handy shorthand to know about, as you're likely to be using it more than you
# might think.

# We pass all_digits[-n..-1] to our rotate_array method from the previous
# exercise, and that method returns a new array with the digits rotated as
# needed.

# We then assign the return value of rotate_array to all_digits[-n..-1]. When an
# expression like this appears on the left side of an assignment, it means,
# "replace the last n elements with the values to the right of the equal sign".
# And that's exactly what happens here: we replace the last n digits with the
# rotated digits.

# Finally, we convert the all_digits array back to an integer.

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917



