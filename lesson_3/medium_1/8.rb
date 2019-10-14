# Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# start with the inner most rps calls:
# rps("rock", "paper") gives "paper"
# and
# rps("rock", "scissors") gives "rock"
# which leaves:
# rps(rps("paper", "rock"), "rock")
# then evaluate the next inner most:
# rps("paper", "rock") gives "paper"
# which leaves:
# rps("paper", "rock") which gives "paper"
