score_player = 0
score_computer = 0
choice = "rock"
computer_choice = "paper"

def win?(first, second)
  moves_that_win = {
    rock: ["lizard", "scissors"],
    paper: ["spock", "rock"],
    scissors: ["lizard", "paper"],
    spock: ["rock", "scissors"],
    lizard: ["spock", "paper"]
  }
  symbol = first.to_sym
  moves_that_win.fetch(symbol).include?(second)
end

def player_score(player, computer, score_player)
  if win?(player,computer)
    score_player = score_player + 1
  else
    score_player
  end
end

def computer_score(player, computer, score_computer)
  if win?(computer, player)
    score_computer = score_computer + 1
  else
    score_computer
  end
end

def display_score(score_player, score_computer)
  puts "You have #{score_player} points, I have #{score_computer} points."
end

def final_winner(score_player, score_computer)
  if score_player == 5
    puts "You are the grand winner!"
  elsif score_computer == 5
    puts "I am the grand winner!"
  else
    puts "Let's go another round."
  end
end

until score_player == 5 || score_computer == 5
  score_player = player_score(choice, computer_choice, score_player)
  score_computer = computer_score(choice, computer_choice, score_computer)
  display_score(score_player, score_computer)
  final_winner(score_player, score_computer)
end

puts "Game is over!"