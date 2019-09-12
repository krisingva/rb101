# Keyword Arguments
# What does this code print?
5.step(to: 10, by: 3) { |value| puts value}

# Reference: https://docs.ruby-lang.org/en/2.6.0/Numeric.html#method-i-step
# step(by: step, to: limit) {|i| block } → self
# Will execute the block for each value in the iteration. It starts with the calling number, will add the amount indicated by the by: argument and stops when the value has surpassed the limit as indicated by the to: argument.
# Answer: It will start at 5, increment up by 3 (adding 3 each time) and be limited to 10 (can not go over 10). It should output:
# 5
# 8
