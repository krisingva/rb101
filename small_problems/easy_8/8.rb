# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.

ALPHABET = ("a".."z").to_a + ("A".."Z").to_a
CONSTANTS = ALPHABET.select do |char|
  !(char =~ /[aeiou]/i)
end

def double_consonants(str)
  new_str = ''
  str.each_char do |char|
    if CONSTANTS.include?(char)
      new_str << char * 2
    else
      new_str << char
    end
  end
  new_str
end

# LS:

# Solution
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end

# Discussion
# This exercise is nearly identical to the previous exercise, so it should come
# as no surprise that the solution is also similar. The main difference here is
# that we need to check each character to see if it is a consonant. There are
# lots of ways to do this: we have chosen to use an array of the lowercase
# consonants, and just check each character to see if it is in that array. Of
# course, we do need to account for uppercase consonants as well, so we convert
# each character to lowercase for the test.

# Examples:

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""