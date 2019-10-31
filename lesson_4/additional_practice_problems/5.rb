# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

# Array#find_index
first_name_index = flintstones.find_index do |element|
  element[0] == "B" && element[1] == "e"
end

p first_name_index

# LS:
# flintstones.index { |name| name[0, 2] == "Be" }