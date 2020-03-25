# Transpose MxN
# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as
# represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices.
# Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any
# matrix with at least 1 row and 1 column.
# def transpose(arr)
#   new_arr = []
#   3.times do |int|
#     new_row = []
#     3.times do |row|
#     new_row << arr[row][int]
#     end
#     new_arr << new_row
#   end
#   new_arr
# end

def transpose_any(arr)
  row_num = arr.size
  col_num = arr[0].size
  new_arr = []
  col_num.times do |col|
    new_row = []
    row_num.times do |row|
    new_row << arr[row][col]
    end
    new_arr << new_row
  end
  new_arr
end

# Examples:

p transpose_any([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose_any([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose_any([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose_any([[1]]) == [[1]]
