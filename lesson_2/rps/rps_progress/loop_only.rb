puts "Welcome to the Rock Paper Scissors game!"

user_hash = ''
computer_hash = ''
winner = ''
user_choice = ''
computer_choice = ''

loop do
  loop do
    puts "Please enter your choice: Rock, Paper or Scissors"
    user_choice = gets.chomp.downcase

    if user_choice == "rock"
      user_hash = {user: "rock"}
      puts "Your choice is Rock."
      break
    elsif user_choice == "paper"
      user_hash = {user: "paper"}
      puts "Your choice is Paper."
      break
    elsif user_choice == "scissors"
      user_hash = {user: "scissors"}
      puts "Your choice is Scissors."
      break
    else
      puts "That is an invalid choice, please only use Rock/ Paper/ Scissors"
    end
  end

  p user_hash

  array = ["rock", "paper", "scissors"]
  computer_choice = array.sample
  computer_choice_capitalized = computer_choice.capitalize
  puts "I have chosen #{computer_choice_capitalized}."

  if computer_choice == user_choice
    puts "It's a tie, please pick again."
  else
    break
  end
end
