# string = 'how   are   you doing today?'
# array = string.split(//)
# index_array = []
# counter = 0
# while counter < array.size do
#   index_array << counter if (array[counter] == ' ') &&
#   (array[counter + 1] == ' ')
#   counter +=1
# end

# p array

# index_array.each { |x| array[x] = ''}

# p array.join

upper_case_values = (65..90).to_a
lower_case_values = (97..122).to_a

alphabet_values = [32] << upper_case_values << lower_case_values
ALLOWED_VALUES = alphabet_values.flatten!


string = 'lallahalla'
array = [0,2,3,7,8]
array.each { |x| string[x] = 'b'}
p string
# x = '&'
# p ALLOWED_VALUES.include? x.ord

# def cleanup(string)
#   p string
#   string.each_char do |x|
#     if ALLOWED_VALUES.include? x.ord
#       x
#     else
#       x = ' '
#     end
#     string
#   end
# end

# p cleanup('hi there %how *%** are you?')
