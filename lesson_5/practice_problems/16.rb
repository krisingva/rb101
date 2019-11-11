# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without any
# form of synchronization, two or more separate computer systems can create new
# items and label them with a UUID with no significant chance of stepping on
# each other's toes.

# It accomplishes this feat through massive randomization. The number of
# possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# Notes: hexadecimal characters: 0-9 and a-f
# index of hex array is 0-15
# use #rand(integer) to reference a random index of hex array to add to string

HEX = ('a'..'f').to_a + ('0'..'9').to_a

def uuid
  string = ''
  8.times do
    string << HEX[rand(0..15)]
  end
  string << '-'
  3.times do
    4.times do
      string << HEX[rand(0..15)]
    end
    string << '-'
  end
  12.times do
    string << HEX[rand(0..15)]
  end

  string
end

puts uuid

# LS (uses Array#sample to get random characters, uses [8, 4, 4, 4, 12] to
# iterate over and use element as argument for #times method):

# def generate_UUID
#   characters = []
#   (0..9).each { |digit| characters << digit.to_s }
#   ('a'..'f').each { |digit| characters << digit }

#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end

#   uuid
# end

# The key to this solution is having the sections array containing integers
# representing the number of characters in each section. During each iteration
# through the array, within the block we can call the times method on the
# integer for that iteration and thus build up the UUID character by character.

# This is just one possible solution to the problem, and yours may be different.
# However you solved it though, you will most likely have needed to use one or
# more iterative methods.

