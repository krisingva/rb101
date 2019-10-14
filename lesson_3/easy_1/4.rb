# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
numbers.delete(1)

# numbers.delete_at(1) would delete the item at index 1, in this case the second item
# numbers.delete(1) would delete the items in the array that have the value 1, in this case the first item

# LS: (note that the array is operated on directly and the return value of the call is the removed item in both cases). Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" method names.