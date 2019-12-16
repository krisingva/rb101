taken = []
hash = {
  "a1" => "", "a2" => "", "a3" => "",
  "b1" => "", "b2" => "", "b3" => "",
  "c1" => "", "c2" => "", "c3" => ""
}
CHOICES = ["x", "o"]
user = ''
available = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
all_user_choices = []
all_computer_choices = []

def vertical_winner?(symbol, grid)
  (grid["a1"] == symbol && grid["a2"] == symbol && grid["a3"] == symbol) ||
    (grid["b1"] == symbol && grid["b2"] == symbol && grid["b3"] == symbol) ||
    (grid["c1"] == symbol && grid["c2"] == symbol && grid["c3"] == symbol)
end

def horizontal_winner?(symbol, grid)
  (grid["a1"] == symbol && grid["b1"] == symbol && grid["c1"] == symbol) ||
    (grid["a2"] == symbol && grid["b2"] == symbol && grid["c2"] == symbol) ||
    (grid["a3"] == symbol && grid["b3"] == symbol && grid["c3"] == symbol)
end

def diagonal_winner?(symbol, grid)
  (grid["a1"] == symbol && grid["b2"] == symbol && grid["c3"] == symbol) ||
    (grid["a3"] == symbol && grid["b2"] == symbol && grid["c1"] == symbol)
end

def winner?(symbol, grid)
  horizontal_winner?(symbol, grid) || vertical_winner?(symbol, grid) ||
    diagonal_winner?(symbol, grid)
  # (grid["a1"] == symbol && grid["a2"] == symbol && grid["a3"] == symbol) ||
  #   (grid["b1"] == symbol && grid["b2"] == symbol && grid["b3"] == symbol) ||
  #   (grid["c1"] == symbol && grid["c2"] == symbol && grid["c3"] == symbol) ||
  #   (grid["a1"] == symbol && grid["b1"] == symbol && grid["c1"] == symbol) ||
  #   (grid["a2"] == symbol && grid["b2"] == symbol && grid["c2"] == symbol) ||
  #   (grid["a3"] == symbol && grid["b3"] == symbol && grid["c3"] == symbol) ||
  #   (grid["a1"] == symbol && grid["b2"] == symbol && grid["c3"] == symbol) ||
  #   (grid["a3"] == symbol && grid["b2"] == symbol && grid["c1"] == symbol)
end

def computer_symbol(human)
  human == "x" ? "o" : "x"
end

def prompt(string)
  puts ">> " + string
end

def valid_choice?(str, array_taken, array_available)
  !(array_taken.include?(str)) && (array_available.include?(str))
end

loop do
  prompt("Which symbol would you like to play? (x or o)")
  user = gets.chomp
  if CHOICES.include?(user)
    break
  else
    prompt("Invalid choice, please enter only x or o")
  end
end

computer = computer_symbol(user)

if computer == "x"
  computer_choice = available.sample
  available.delete(computer_choice)
  taken << computer_choice
  all_computer_choices << computer_choice
  hash[computer_choice] = computer
  prompt("Computer chose #{computer_choice}")
end

loop do
  loop do
    prompt("Please make a move, available choices are:")
    prompt("#{available.join(", ")}")
    choice = gets.chomp
    if valid_choice?(choice, taken, available) == false
      prompt("#{choice} is an invalid choice.")
      prompt("Please pick from available choices.")
    else
      available.delete(choice)
      taken << choice
      all_user_choices << choice
      hash[choice] = user
      break
    end
  end

  if available.empty?
    prompt("Game over, there is no winner!")
    break
  end

  if winner?(user, hash)
    prompt("You have won!")
    break
  else
    computer_choice = available.sample
    available.delete(computer_choice)
    taken << computer_choice
    all_computer_choices << computer_choice
    hash[computer_choice] = computer
    prompt("Computer chose #{computer_choice}")
      if winner?(computer, hash)
        prompt("Computer won!")
        break
      end
  end

  if available.empty?
    prompt("Game over, there is no winner!")
    break
  end

  prompt("You have made these choices: #{all_user_choices.join(", ")}")
  prompt("Computer has made these choices: #{all_computer_choices.join(", ")}")
end
