# Let's say we have the following data structure of nested arrays and we want to
# increment every number by 1 without changing the data structure.

[[[1, 2], [3, 4]], [5, 6]].map do |arr| # arr = [[1, 2], [3, 4]], arr = [5, 6]
  arr.map do |el|   # el = [1, 2], el = [3, 4], el = 5, el = 6
    if el.to_s.size == 1    # it's an integer
      el + 1                # returns the evaluation of el + 1
    else                    # it's an array
      el.map do |n|         # returns a new array where each element =
        n + 1               # former element + 1
      end
    end
  end
end

# This example is more complicated than the rest, but at this point you should
# be able to break it down effectively. Use the tools you've learned about in
# this lesson and take as much time as needed. Work on breaking down each
# component and understanding the return value of each expression. What will be
# the final return value? Check the solution only after you've tried this on
# your own.

# else statements inner most map method call will return a new sub-sub-array
# with each element increased by 1.
# if statement will return the evaluation of element increased by 1.
# middle map method call will use the return value from the if else statements
# to return transformed sub-arrays.
# outermost map method call will use the return value from the middle map call
# to return a transformed outer array.

# return:
# => [[[2, 3], [4, 5]], [6, 7]]

# LS:
# The tricky part about this example is that the original array has uneven
# nested levels. If we want to add 1 to each value we first need to find a way
# to access those values, regardless of how many arrays they're nested in. To do
# this, we determine if the current element is an array or an integer and then
# execute the appropriate code.

# map is a good choice for this task because it returns a new array containing
# transformed values. This way we can ultimately return a new array with the
# same nested levels as the original.

# In practice, this type of nested data processing is typically a sign of bad
# design. But if you ever find yourself in that situation, you should be
# confident in your ability to work through it.