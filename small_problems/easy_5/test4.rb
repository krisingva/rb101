# def flip_letters(s)
#   first_letter = s[0]
#   last_letter = s[-1]
#   p s[0] = last_letter
#   p s[-1] = first_letter
# end

# p flip_letters('Hello there we are back')

def swap(string)
  array = string.split(' ')
  first_letters = array.map { |s| s[0] }
  last_letters = array.map { |s| s[-1] }

  counter = 0
    while counter < last_letters.size do
      array[counter][0] = last_letters[counter]
      array[counter][-1] = first_letters[counter]
      counter += 1
    end
  array
end

# counter = 0
#   while last_letters.size > 0 do
#   # new_array = array.map do |s|
#   #   s.gsub(s[0], last_letters[counter])
#     last_letters.delete_at(counter)
#     p last_letters
#     counter += 1
#   end

# p new_array
# new_array = array.map do |s|
#   s.gsub(s[0], s[-1])
#   s.gsub(s[-1], s[0])
# end
# p array[0][0]
# p array[0][-1]
# p array[-1][0]
# p array[-1][-1]