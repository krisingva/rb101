VALID_CHOICES = %w(rock paper scissors spock lizard)
VALID_INPUT = %w(r p sc sp l)

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

# def win?(first, second) (first == 'rock' && second == 'scissors') || (first ==
#   'paper' && second == 'rock') || (first == 'scissors' && second == 'paper')
#   end

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

loop do
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

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
