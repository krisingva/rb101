# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# My answer: # =>  [[:a, 'ant'], [:b, 'bear']]
# Enumerable#map documentation:
# map { |obj| block } → array
# Returns a new array with the results of running block once for every element
# in enum.
# The block transforms the value of each key value pair to value if the length
# of the string is longer than 3 characters. This code essentially means that
# the value stays the same no matter what the string length is. The only
# transformation is that the method returns an array so each key value pair
# becomes a sub-array within an array.

# Correct answer: # => [nil, "bear"]
# Remember: The map method always performs transformation based on the return
# value of the block. Even though both key and value are passed into the block,
# only the value is evaluated in the block code and the return value of the if
# statement will be the final return value of the block. For the first element,
# the if statement will return nil, see LS discussion below. For the second
# element, the if statement returns value which is "bear" in this case. Only the
# transformed elements are displayed in the returned array. This point seems a
# bit counter-intuitive when the length of the returned collection from the map
# method is considered to be the length of the original collection.

# LS: There are some interesting things to point out here. First, the return
# value of map is an array, which is the collection type that map always
# returns. Second, where did that nil come from? If we look at the if condition
# (value.size > 3), we'll notice that it evaluates to true when the length of
# value is greater than 3. In this case, the only value with a length greater
# than 3 is 'bear'. This means that for the first element, 'ant', the condition
# evaluates to false and value isn't returned.

# When none of the conditions in an if statement evaluates as true, the if
# statement itself returns nil. That's why we see nil as the first element in
# the returned array.