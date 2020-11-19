puts "Welcome to the Rock Paper Scissors game!"

user_hash = ''
computer_hash = ''
winner = ''

loop do # start of main loop
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

    p user_hash

    array = ["rock", "paper", "scissors"]
    computer_choice = array.sample
    computer_choice_capitalized = computer_choice.capitalize
    puts "I have chosen #{computer_choice_capitalized}."

    if computer_choice == user_choice
      puts "It's a tie, please pick again."
      break
    end

    p computer_hash = {computer: computer_choice}
    choice_array = [user_hash[:user], computer_hash[:computer]]
    p choice_array
    if (choice_array.include?("rock")) &&  (choice_array.include?("paper"))
      winner = "paper"
      break
    elsif (choice_array.include?("rock")) && (choice_array.include?("scissors"))
      winner = "rock"
      break
    elsif (choice_array.include?("scissors")) && (choice_array.include?("paper"))
      winner = "scissors"
      break
    else
      puts "It's a tie, please choose again."
    end
  end

  puts "The winner is #{winner}"
  p user_hash
  p computer_hash
  if computer_hash.value?(winner)
    puts "I am the winner!"
  else
    puts "You've won!"
  end

  puts "Would you like to play again? (y/n)"
  play_again = gets.chomp
  break unless play_again == 'y'

end # end of main loop





