VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_INPUT = %w(r p sc sp l)
score_player = 0
score_computer = 0

def prompt(message)
  Kernel.puts("=> #{message}")
end

def full_words(letter)
  case (letter)
  when "r"
    "rock"
  when "p"
    "paper"
  when "sc"
    "scissors"
  when "sp"
    "spock"
  when "l"
    "lizard"
  end
end

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

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def player_score(player, computer, score_player)
  if win?(player, computer)
    score_player += 1
  else
    score_player
  end
end

def computer_score(player, computer, score_computer)
  if win?(computer, player)
    score_computer += 1
  else
    score_computer
  end
end

def display_score(score_player, score_computer)
  prompt("Your total score: #{score_player}; My total score: #{score_computer}")
end

def final_winner(score_player, score_computer)
  if score_player == 5
    prompt("You are the grand winner!")
  elsif score_computer == 5
    prompt("I am the grand winner!")
  else
    prompt("Let's go another round.")
  end
end

until score_player == 5 || score_computer == 5
  choice = ''
  loop do
    prompt("Choose one: #{VALID_INPUT.join(', ')}")
    prompt("(r = rock, p = paper, sc = scissors, sp = spock or l = lizard)")
    choice = Kernel.gets().chomp()

    if VALID_INPUT.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  choice = full_words(choice)

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  score_player = player_score(choice, computer_choice, score_player)
  score_computer = computer_score(choice, computer_choice, score_computer)
  display_score(score_player, score_computer)
  final_winner(score_player, score_computer)

end

prompt("Game over! Thank you for playing. Good bye!")
