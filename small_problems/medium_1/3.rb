# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

def max_rotation(int)
  arr = int.digits.reverse
  count = arr.size
  dupl_arr = arr.clone
  final = 0
  loop do
    break if count == 0
    rotating_element = dupl_arr[-count]
    dupl_arr.delete(rotating_element)
    dupl_arr << rotating_element
    final = dupl_arr.join.to_i
    count -= 1
  end
  final
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

# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end

# Discussion
# Our max_rotation method begins by first determining how many digits we have,
# then starts up a loop. The loop repeatedly rotates the number, starting with
# the rightmost n digits, then the rightmost n - 1 digits, and so on, until we
# get down to the last 2 digits. (We could also include 1, but it is not needed
# since it does not modify the number when we rotate just the last digit.)

# Further Exploration
# Assume you do not have the rotate_rightmost_digits or rotate_array methods.
# How would you approach this problem? Would your solution look different? Does
# this 3 part approach make the problem easier to understand or harder?

# There is an edge case in our problem when the number passed in as the argument
# has multiple consecutive zeros. Can you create a solution that preserves
# zeros?

# Example:

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

