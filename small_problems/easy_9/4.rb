# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# def sequence(int)
#   (1.upto(int)).to_a
# end

# LS:
# Solution
# def sequence(number)
#   (1..number).to_a
# end

# Discussion
# This simply takes advantage of Range combined with to_a which creates a range
# from 1 up to the value of the supplied parameter number and then converts it
# to an array.

# Further Exploration
# Food for thought: what do you think sequence should return if the argument is
# not greater than 0. For instance, what should you do if the argument is -1?
# Can you alter your method to handle this case?

def sequence(int)
  int > 0 ? (1.upto(int)).to_a : (int.upto(0)).to_a
end

# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) == [-1, 0]
p sequence(0) == [0]
