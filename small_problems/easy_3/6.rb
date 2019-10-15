# The || operator returns a truthy value if either or both of its operands are
# truthy, a falsey value if both operands are falsey. The && operator returns a
# truthy value if both of its operands are truthy, and a falsey value if either
# operand is falsey. This works great until you need only one of two conditions
# to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

# Examples:

# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

def xor?(a, b)
  if a == true && b == false
    true
  elsif b == true && a == false
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# LS Solution:
# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

# Discussion
# This implementation is straight forward; it simply returns true if exactly one
# of the values is truthy; otherwise, it returns false. The explicit false
# return isn't actually necessary since return true if value2 && !value1 returns
# nil if the condition is falsey. However, methods whose name ends in a ? should
# usually only return the explicit true and false values.

# A shorter version of this method is:

# def xor?(value1, value2)
#   (value1 && !value2) || (value2 && !value1)
# end

# This is more idiomatic ruby than the first solution, but it does take a
# little more effort to figure out what is going on.

# Some of you may be tempted to use the ^ operator for this exercise. The ^
# operator is a ruby bit-wise operator for performing exclusive-or bit
# operations. In some cases, this means that ^ can be used as an exclusive-or
# operator. However, this only works properly when both operands are the same
# type. For this reason, you should not use ^ as a boolean xor operator.

# Further Exploration Can you think of a situation in which a boolean xor method
# would be useful? Suppose you were modeling a light at the top of a flight of
# stairs wired in such a way that the light can be turned on or off using either
# the switch at the bottom of the stairs or the switch at the top of the stairs.
# This is an xor configuration, and it can be modeled in ruby using the xor
# method. Think of some additional examples.

# || and && are so-called short circuit operators in that the second operand is
# not evaluated if its value is not needed. Does the xor method perform
# short-circuit evaluation of its operands? Why or why not? Does short-circuit
# evaluation in xor operations even make sense?

# Additional examples for xor configuration: Pick up from school: you only
# want one parent to be there for pickup, it's inefficient if both are there and
# very bad if neither are there!
# short-circuit behaviour would not make sense for xor configuration of only
# true/false values. However, if there were more options than two (1/2/3) and
# you only wanted a combination of two options (1/2), you would want to
# short-circuit if you encounter the third option (3).

