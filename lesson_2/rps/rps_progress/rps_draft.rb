puts "Welcome to the Rock Paper Scissors game!"

user_hash = ''
computer_hash = ''
winner = ''

loop do # start of main loop
  loop do
    puts "Please enter your choice: 1 for Rock, 2 for Paper, 3 for Scissors"
    user_choice = gets.chomp
      if user_choice == "1"
        user_hash = {user: "rock"}
        puts "Your choice is Rock."
        break
      elsif user_choice == "2"
        user_hash = {user: "paper"}
        puts "Your choice is Paper."
        break
      elsif user_choice == "3"
        user_hash = {user: "scissors"}
        puts "Your choice is Scissors."
        break
      else
        puts "That is an invalid choice, please only use 1/2/3"
      end
  end

  p user_hash

  array = ["rock", "paper", "scissors"]
  computer_choice = array.sample
  computer_choice_capitalized = computer_choice.capitalize
  puts "I have chosen #{computer_choice_capitalized}."
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

end # end of main loop

puts "The winner is #{winner}"
p user_hash
p computer_hash
if computer_hash.value?(winner)
  puts "I am the winner!"
else
  puts "You've won!"
end



