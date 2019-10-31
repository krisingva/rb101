# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.
# each_with_index method:
hsh = {}
flintstones.each_with_index do |item, index|
  hsh[item] = index
end

p hsh

# each_with_object method:
hsh_again = flintstones.each_with_object({}) do |num, new_hash|
  new_hash[num] = flintstones.index(num)
end

p hsh_again
