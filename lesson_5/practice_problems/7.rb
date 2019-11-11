# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

p a
p b
p arr

# arr[0] references a, which points to 2
# with arr[0] += 2, a is reassigned and points to 4
# a => 4
# arr[1][0] references element at index 0 of b which is currently 5
# with arr[1][0] -= a, this element becomes 5 - 4 = 1
# b => [1, 8]
# arr => [4, [1, 8]]

# Wrong! While arr[0] += 2 changes the element in the collection, the variable a
# still points to the original value. a is NOT reassigned!
# a => 2
# b => [3, 8]
# arr => [4, [3, 8]]

# LS:

# a # => 2
# b # => [3, 8]

# The value of a didn't change because we are not referencing a at any point.
# This code arr[0] += 2 was modifying the array, arr not a. In effect we are
# assigning a new object at that index of the array so that instead of arr[0]
# containing a it now contains 4 - we can check this by looking at the value of
# arr:

# arr # => [4, [3, 8]]

# The value of b did change because b is an array and we are modifying that
# array by assigning a new value at index 0 of that array.