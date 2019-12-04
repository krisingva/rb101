# Further Exploration
# Write a method that rotates a string instead of an array. Do the same thing
# for integers. You may use rotate_array from inside your new method.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# For String:
def rotate_string(str)
  arr = str.chars
  rotate_array(arr).join
end

p rotate_string("hello world")

# For Integer:
def rotate_integer(int)
  arr = int.digits.reverse
  rotate_array(arr).join.to_i
end

p rotate_integer(12345)