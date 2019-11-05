# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

# Notes:
# Input: string with any amount of words
# Output: new string with all the cases of the characters swapped
# Algorithm:
# 1. Transform string to single character array with String#split(//)
# 2. Iterate over array and change each character's case with String#upcase or String#downcase depending on original case
# 3. Transform array back into string with Array#join

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  new_array = string.split(//).map do |char|
    if UPPERCASE.include? char
      char.downcase
    elsif LOWERCASE.include? char
      char.upcase
    else
      char
    end
  end
  new_array.join
end

# LS:
# Solution
# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

# Discussion
# In our solution, we iterate through each character in the string passed into
# swapcase. If the character is lowercase (/[a-z]/), we make it uppercase; if it
# is uppercase (/[A-Z]/), we make it lowercase. For all other characters, we do
# nothing.

# Each character is then mapped to a new array and assigned to characters.
# Finally, we join characters together into a new String and return that value.

# Example:

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'