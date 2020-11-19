# hash_user = {user: "u_choice"}
# hash_computer = {computer: "c_choice"}
# p hash_user[:user]
# p choice_array = [hash_user[:user], hash_computer[:computer]]

computer_hash = {computer: "rock"}
winner = "rock"

if computer_hash.value?(winner)
  puts "I am the winner!"
else
  puts "You've won!"
end