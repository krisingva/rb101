[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end

# output:
# 1
# 3
# return:
# The method #map transforms each element of calling array (outer array)
# according to the return value of the block. The method #puts always returns
# nil, so each element in outer array will be transformed to nil. The return
# value of the map method will be the transformed array:
# => [nil, nil]

# For each element in outer array (the sub-arrays), #map method is called.
# Within the block, the elements of the outer array are temporarily assigned to
# the local variable arr. The #first method is called on arr. During the first
# iteration [1, 2] is assigned to arr and arr.first returns 1. This return value
# is used as an argument for the #puts method which outputs the string
# representation of the return value. The #puts method itself returns nil. This
# is the last line of the block (last evaluated code which becomes the return
# value of the block), meaning that the return value of the puts method becomes
# the return value of the block. The #map method uses the return value of the
# block to transform the current element of the iteration. That means that the
# sub-array [1, 2] becomes nil. The same thing happens with the next element
# (sub-array [3, 4]). #puts method results in output of 3 and #map method
# results in the transformation of sub-array [3, 4] to nil. Finally, the #map
# method returns the transformed collection which is the outer array with the
# transformed elements or : [nil, nil]

