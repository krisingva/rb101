# Countdown
# Our countdown to launch isn't behaving as expected. Why? Change the code so
# that our program successfully counts down from 10 to 1.

# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   counter -= 1 # decrease(counter)
# end

# puts 'LAUNCH!'

# On line 13, the decrease method is called with an argument of counter. Inside
# the decrease method, the counter argument is decreased by 1, however, this
# counter variable inside the method only lives inside the method and has no
# effect on the counter variable that lives outside the method and is used in
# the block for the times method call. Inside the block for the times method
# call, counter never changes, it stays at 10 for each iteration. To fix this,
# change line 13 to `counter -= 1`

# Further Exploration
# We specify 10 two times, which looks a bit redundant. It should be possible to
# specify it only once. Can you refactor the code accordingly?

def decrease(counter)
  counter -= 1
end

counter = 10

counter.times do
  puts counter
  counter -= 1 # decrease(counter)
end

puts 'LAUNCH!'