# A. Without running the code try to answer what will this code example output.

a = 4
b = 2

2.times do |a|
  a = 5
  puts a
end

puts a
puts b

# B. How could we fix this code so it actually reassigns local variable `a` inside of the `do..end` block?
