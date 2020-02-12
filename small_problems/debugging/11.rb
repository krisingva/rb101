# What's wrong with the output?
# Josh wants to print an array of numeric strings in reverse numerical order.
# However, the output is wrong. Without removing any code, help Josh get the
# expected output.

arr = ["9", "8", "7", "10", "11"]
# arr.map! do |item|
#   item.to_i
# end

# arr = arr.sort do |x, y|
#   y.to_i <=> x.to_i
# end

# arr.map! do |item|
#   item.to_s
# end

arr = arr.sort do |x, y|
  y.to_i <=> x.to_i
end

p arr == ["11", "10", "9", "8", "7"]



# Expected output: ["11", "10", "9", "8", "7"]
# Actual output: ["10", "11", "7", "8", "9"]

# LS:
# Solution
# Solution 1

# p(
#   arr.sort do |x, y|
#     y.to_i <=> x.to_i
#   end
# )
# Solution 2

# p arr.sort { |x, y| y.to_i <=> x.to_i }

# Discussion
# The main reason why the output was unexpected is because when you use do...end
# block, p and arr.sort bind more tightly due to Ruby's precedence rules, so you
# are passing the block to the return value of p arr.sort. It's as though you
# wrote:

# (p arr.sort) do |x,y|
#   y.to_i <=> x.to_i
# end
# In Josh's case, the block is ignored since the return value of p arr.sort is
# not a method call.

# One way to get around this precedence issue is to use parentheses as in
# Solution 1. You can also use braces instead of do...end as in Solution 2.

# The Ruby documentation does have information on precedence, but this
# particular behavior isn't covered very well. Our main reason for showing it is
# that this issue comes up time and again with students.

