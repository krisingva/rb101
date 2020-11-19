loop do
  puts "again? (Y/N)"
  answer = gets.chomp
  if answer.downcase.start_with?("n")
    break
  elsif
    answer.downcase.start_with?("y")
  else
    puts "Please only use Y or N!"
  end
end

