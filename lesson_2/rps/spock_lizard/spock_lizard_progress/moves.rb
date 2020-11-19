# hash of keys that beat values
# computer_choice = "lizard"
# player_choice = "rock"
# moves_that_win = {
#   rock: ["lizard", "scissors"],
#   paper: ["spock", "rock"],
#   scissors: ["lizard", "paper"],
#   spock: ["rock", "scissors"],
#   lizard: ["spock", "paper"]
# }

def player_wins?(player_choice, computer_choice)
  moves_that_win = {
    rock: ["lizard", "scissors"],
    paper: ["spock", "rock"],
    scissors: ["lizard", "paper"],
    spock: ["rock", "scissors"],
    lizard: ["spock", "paper"]
  }
  choice_symbol = player_choice.to_sym
  moves_that_win.fetch(choice_symbol).include?(computer_choice)
end
# returns true if player wins

puts player_wins?("spock", "lizard") == true