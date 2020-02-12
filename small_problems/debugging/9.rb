# Number Guessing Game
# A friend of yours wrote a number guessing game. The first version he shows you
# picks a random number between 1 and a provided maximum number and offers you a
# given number of attempts to guess it.

# However, when you try it, you notice that it's not working as expected. Run
# the code and observe its behavior. Can you figure out what is wrong?

# def valid_integer?(string)
#   string.to_i.to_s == string
# end

# def guess_number(max_number, max_attempts)
#   winning_number = (1..max_number).to_a.sample
#   attempts = 0

#   loop do
#     attempts += 1
#     break if attempts > max_attempts

#     input = nil
#     until valid_integer?(input)
#       print 'Make a guess: '
#       input = gets.chomp
#     end

#     guess = input.to_i

#     if guess == winning_number
#       puts 'Yes! You win.'
#     else
#       puts 'Nope. Too small.' if guess < winning_number
#       puts 'Nope. Too big.'   if guess > winning_number

#       # Try again:
#       guess_number(max_number, max_attempts)
#     end
#   end
# end

# guess_number(10, 3)

# There is a disconnect between attempts and max_attempts in that when the
# guess_number method has to run again after a run, attempts go back to 0. Also
# the right guess does not result in the right output, because the winning
# number gets reassigned in every attempt. Instead of reinvoking the
# guess_number method at the end, just keep looping if guess is not right and
# put in appropriate break keywords.
# Fix:

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    if attempts > max_attempts
      puts "Too many attempts, you lose!"
      break
    end

    input = nil
    until valid_integer?(input)
      print "Make a guess (from 1 to #{max_number}): "
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end

  end # end of loop
end

guess_number(10, 3)