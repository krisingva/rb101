# The code below is an example of an infinite loop. The name describes exactly
# what it does: loop infinitely. This loop isn't useful in a real program,
# though. Modify the code so the loop stops after the first iteration.

# loop do
#   puts 'Just keep printing...'
# end

loop do
  puts 'Just keep printing...'
  break
end

# or
# counter = 0
# loop do
#   break if counter >= 1
#   puts 'Just keep printing...'
#   counter += 1
# end

