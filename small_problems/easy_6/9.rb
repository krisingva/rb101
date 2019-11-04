# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the array,
# false if it is not. You may not use the Array#include? method in your
# solution.

def include?(array, value)
  array.each do |x|
    return true if x == value
  end
  return false
end

# def include?(array, value)
#   new_array = []
#   new_array << value
#   array.each do |x|
#     new_array << x
#     return true if new_array.count(x) > 1
#   end
#   return false
# end

# LS:
# Solution
# The easy way

# def include?(array, value)
#   !!array.find_index(value)
# end

# A slightly harder way

# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

# Discussion
# The first method uses Array#find_index to scan the array for the first element
# that has the specified value. find_index returns the index number of the found
# element, which will always have a truthy value, or nil if no such element is
# present. We then use !! to force the return value to true or false in
# accordance with the implied promise of the ? in include?.

# The second method does essentially the same thing, but it uses each instead of
# find_index. This takes a little bit more work, since we are explicitly
# returning false if the value is not found.

# Further Exploration
# Can you think of other solutions to this problem? There are lots of different
# ways to get the same result.

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false