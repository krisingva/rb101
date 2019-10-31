number_of_pets = {
  'dogs' => 2,
  'cats' => 4,
  'fish' => 1
}
pets = number_of_pets.keys # => ['dogs', 'cats', 'fish']
counter = 0

loop do
  break if counter == number_of_pets.size
  current_pet_number = number_of_pets[pets[counter]]
  puts "I have #{current_pet_number} #{pets[counter]}!"
  counter += 1
end