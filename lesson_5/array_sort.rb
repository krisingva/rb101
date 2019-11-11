# see if you can work out what would be returned when sort is called on this
# array of arrays:

p [['a', 'cat', 'b', 'c'], ['b', 2], ['a', 'car', 'd', 3], ['a', 'car', 'd']].sort

# Answer:
# Compare first elements of each array:
# [['a', 'cat', 'b', 'c'], ['a', 'car', 'd', 3], ['a', 'car', 'd'], ['b', 2]]
# Compare second elements:
# [['a', 'car', 'd', 3], ['a', 'car', 'd'], ['a', 'cat', 'b', 'c'], ['b', 2]]
# Compare third elements:
# [['a', 'car', 'd', 3], ['a', 'car', 'd'], ['a', 'cat', 'b', 'c'], ['b', 2]]
# compare fourth elements:
# => [['a', 'car', 'd'], ['a', 'car', 'd', 3], ['a', 'cat', 'b', 'c'], ['b', 2]]

# LS:
# The documentation states the "Each object in each array is compared... in an
# 'element-wise' manner", so the first object in all of the arrays is compared
# initially. Since three of the arrays have the string 'a' at their first index,
# these all come before the array that has the string 'b' at its first index.

# You will have noticed that the sub-array that has 'b' at its first index has
# an integer 2 at its second index. We already know that comparing an integer
# with a string will return nil, which will cause sort to throw an error. In
# this case, since sort did not need to compare the second item of that array to
# be able to establish its order, the integer does not come into play here and
# so no error is thrown. If the first item in that array had been an 'a', like
# the other arrays, then the integer would have come into play and an error
# would have been thrown:

# [['a', 'cat', 'b', 'c'], ['a', 2], ['a', 'car', 'd', 3], ['a', 'car',
# 'd']].sort
# => ArgumentError: comparison of Array with Array failed
# There is another sub-array which contains an integer ['a', 'car', 'd', 3]. In
# this case the integer does come into play, but only in terms of comparing the
# length of this array with the array ['a', 'car', 'd']. The integer itself is
# not compared with a string, so again no error is thrown.

# Don't worry if this seems a little confusing at the moment. Working with
# nested arrays like this can be fairly complex. We'll look in more depth at
# working with nested collections in a later assignment.