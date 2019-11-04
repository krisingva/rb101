# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it
# takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to 2.

# Notes:
# 1. Create fibonacci array
# 1.a. set value of index 0 and index 1 of fibonacci array equal to 1
# 1.b. set value of index n as the sum of the value of index n-1 and index n-2.
# 2. Loop through and break when digit value reaches argument value
# 2.a. Represent the number digit value as: number.to_s.size
# 3. Add 1 to the value of the index.

def find_fibonacci_index_by_length(int)
  array = []
  array[0] = 1
  array[1] = 1
  n = 2
  idx = 0
  loop do
    array[n] = array[n-1] + array[n-2]
    p array[n].to_s.size
    if array[n].to_s.size == int
      idx = n
      break
    else
      n += 1
    end

  end
  idx + 1
end


# Examples:

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

# LS (doesn't create an array, just adds numbers until digit value reaches argument):
# def find_fibonacci_index_by_length(number_digits)
#   first = 1
#   second = 1
#   index = 2

#   loop do
#     index += 1
#     fibonacci = first + second
#     break if fibonacci.to_s.size >= number_digits

#     first = second
#     second = fibonacci
#   end

#   index
# end

# Discussion
# We'll take the brute force approach for this solution; it's the easiest form
# to both understand and write.

# We start by setting the first 2 numbers, first and second, to 1 in accordance
# with the series definition. We start our index at 2 since we now have the 2nd
# Fibonacci number in second.

# We then begin iterating through the numbers, exiting the loop when we finally
# encounter a Fibonacci number of the correct size (note that we check whether
# the result is >= the required number of digits; the > part of this comparison
# will probably never be true, but it's safer to ensure that we don't end up in
# an infinite loop, just in case there are no numbers with the exact number of
# digits we want).

# During each iteration, we first increment our index, then compute the newest
# number in the sequence by adding the last 2 numbers together. After checking
# for the desired result, we then replace first and second with the pair of
# numbers that will be used in the next calculation.

# Finally, we return our index; this is the index of the first Fibonacci number
# with number_digits digits.

# Further Exploration Fibonacci numbers are sometimes used in demonstrations of
# how to write recursive methods. Had we tried to use a recursive method, it
# probably would have resulted in the program running out of stack space. Ruby
# isn't well equipped to deal with the level of recursion required for a
# recursive solution.

# We'll explore Fibonacci numbers again, along with the usual recursive
# solutions, later in the Medium exercises.