# Doesn't work!!!


puts "Welcome to the Rock Paper Scissors game!"

user_hash = ''
computer_hash = ''
winner = ''
user_choice = ''
computer_choice = ''
choice_array = ''
choice = ''

def choose_winner(choice)
  if (choice.include?("rock")) && (choice.include?("paper"))
    winner = "paper"
  elsif (choice.include?("rock")) && (choice.include?("scissors"))
    winner = "rock"
  elsif (choice.include?("scissors")) && (choice.include?("paper"))
    winner = "scissors"
  end
  winner
end

loop do
  loop do
    loop do
      puts "> Please enter your choice: Rock, Paper or Scissors"
      user_choice = gets.chomp.downcase

      if user_choice == "rock"
        user_hash = { user: "rock" }
        puts "> Your choice is Rock."
        break
      elsif user_choice == "paper"
        user_hash = { user: "paper" }
        puts "> Your choice is Paper."
        break
      elsif user_choice == "scissors"
        user_hash = { user: "scissors" }
        puts "> Your choice is Scissors."
        break
      else
        puts "> That is an invalid choice."
      end
    end

    array = ["rock", "paper", "scissors"]
    computer_choice = array.sample
    computer_choice_capitalized = computer_choice.capitalize
    puts "> I have chosen #{computer_choice_capitalized}."

    if computer_choice == user_choice
      puts "> It's a tie, please pick again."
    else
      break
    end
  end

  computer_hash = { computer: computer_choice }
  choice_array = [user_hash[:user], computer_hash[:computer]]
  choose_winner(choice_array)

  if computer_hash.value?(winner)
    puts "> I am the winner!"
  else
    puts "> You've won!"
  end

  puts "> Would you like to play again? (y/n)"
  play_again = gets.chomp.downcase
  if play_again == 'y'
    puts "> Here we go again!"
  else
    puts "> OK, I hope you had fun playing with me! Goodbye."
    break
  end
end
