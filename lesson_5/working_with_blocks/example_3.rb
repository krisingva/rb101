# Let's mix it up a little bit and have you try taking apart an example on your
# own.

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# Map out a detailed breakdown for the above example using the same approach as
# the previous two examples. What do you think will be returned and what will be
# the side-effects? You shouldn't have to guess; there is a right answer and you
# have all the knowledge necessary to take it apart. Take your time and be
# careful. Check the solution below once you have done this on your own.

# Line 1:
# Action: call method #map
# Object: outer array
# Side-effect: no
# Return value: transformed outer array with elements corresponding to the
# return values of block for each iteration, [1, 3].
# Is return value used? yes, creates a new collection with transformed elements
# *** Is return value used? No!

# Line 1-4:
# Action: block execution
# Object: sub-arrays
# Side-effect: no
# Return value: first element of each sub-array
# Is return value used? yes, passed on to map method (used for transformation)

# Line 2:
# Action: call method #first
# Object: sub-arrays
# Side-effect: no
# Return value: first element of each sub-array
# Is return value used? yes, passed on to puts method

# Line 2:
# Action: call method #puts
# Object: first element of each sub-array
# Side-effect: outputs string representation of object
# Return value: nil
# Is return value used? no

# Line 3:
# Action: call method #first
# Object: sub-arrays
# Side-effect: no
# Return value: first element of each sub-array
# Is return value used? yes, passed on to map method (used to determine the return value of block)

# Output:
# 1
# 3
# return:
# => [1, 3]