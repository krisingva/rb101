# This example contains a triple-level nested array. Take your time and try to
# break down each component. Hint: the top-level array is a 2-element array.

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

# map will iterate through the second level arrays (element1):
# [[1], [2], [3], [4]] and [['a'], ['b'], ['c']]
# and return a new outer array containing transformed elements based on the
# return of the inner methods and blocks.
# each will iterate through the elements of the second level arrays (element 2):
# [1], [2], [3], [4] and ['a'], ['b'], ['c']
# each of those elements will be used to call the partition method. For example:
# [1].partition { |x| x.size > 0 }
# => [[1], []]
# element3.size > 0 is true for all of the elements, so all lowest level array
# elements will be encapsualted in another outer array with an additional empty
# array as the second element of that outer array.
# However, this return is not used as the each method returns the original
# calling collection and that is fed into the map method call which then returns
# the original collection:
# => [[[1], [2], [3], [4]], [['a'], ['b'], ['c']]]

#partition:
# partition { |obj| block } → [ true_array, false_array ]
# partition → an_enumerator
# Returns two arrays (within an outer array), the first containing the elements
# of enum for which the block evaluates to true, the second containing the rest.
# If no block is given, an enumerator is returned instead.
# (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]

# LS:
# The key things to focus on with this example is understanding how each method
# works and the return value of the block. There are a total of 6 places where a
# return occurs: 3 methods (map, each, and partition) and 3 blocks (one for each
# method). By looking at the example, you should notice the first method call
# within map is each. If we understand each, we know that it doesn't care about
# the block's return value and it always returns the calling object. Therefore,
# just by looking at line 2, we can already say that the return value of map
# will be a new array that matches the value of the calling object. In this
# example, that's really all the interesting behavior there is as there are no
# side effects deeper in the code.