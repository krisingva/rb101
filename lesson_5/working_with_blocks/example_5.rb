# Next, let's tackle a slightly more complex example.

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# What will the return value be in this example? Use what you've learned so far
# to break it down on your own before checking the solution below.

# the #map method transforms each element that is passed in as argument and
# returns a new collection containing all the transformed elements.
# this code will return:
# => [[2, 4], [6, 8]]

# Line 1:
# Action: outer map method call
# Object: outer array
# Side-effect: no
# Return value: a new array with transformed elements
# Is return value used? no

# Line 1-5:
# Action: outer block execution
# Object: sub-arrays
# Side-effect: no
# Return value: new sub-arrays with transformed elements
# Is return value used? yes, to determine the return value of outer map method
# call

# Line 2:
# Action: inner map method call
# Object: sub-arrays
# Side-effect: no
# Return value: new sub-arrays with transformed elements
# Is return value used? yes, to determine the return value of outer block
# execution

# Line 2-4:
# Action: inner block execution
# Object: each element of sub-arrays
# Side-effect: yes, transform each element integer by multiplying by 2
# LS: None!!!
# Return value: transformed elements
# LS: an integer
# Is return value used? yes, to determine the return value of inner map method
# call

# LS additional!!!:
# Line 3:
# Action: num * 2
# Object: n/a
# Side-effect: None
# Return value: an integer
# Is return value used? yes, to determine the return value of inner block