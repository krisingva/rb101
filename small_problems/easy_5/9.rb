# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# Notes:
# 1. Convert string to array
# 2. Get another array (index_array) with all the indexes where the index
#    element following index element are the same. This index array will mark
#    which elements of the original array should be deleted.
# 3. Use that array to change all double ' ' into a single ' '.

# def crunch(string)
#   array = string.split(//)
#   index_array = []
#   counter = 0
#     while counter < array.size do
#       index_array << counter if array[counter] == array[counter + 1]
#       counter +=1
#     end
#   index_array.each { |x| array[x] = '' }
#   new_string = array.join
# end

# LS Solution (does not convert to array, uses string indexes):

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

# Examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# Discussion This one isn't too bad. We have to go through each character of
# this string and check for any consecutive duplicate characters. The plan is to
# build the return value, character by character, in the string referenced by
# crunch_text. With that in mind, we use index to track our position in text.

# On each iteration of our loop, we check whether the current indexed character
# is equal to the next character in text. If the characters are the same, we do
# nothing but advance the index to the next character in text. Otherwise, we
# append the current character to crunch_text and increment the index.

# Further Exploration You may have noticed that we continue iterating until
# index points past the end of the string. As a result, on the last iteration
# text[index] is the last character in text, while text[index + 1] is nil. Why
# do we do this? What happens if we stop iterating when index is equal to
# text.length?

# Still works!

# Can you determine why we didn't use String#each_char or String#chars to
# iterate through the string? How would you update this method to use
# String#each_char or String#chars?

# You can solve this problem using regular expressions (see the Regexp class
# documentation). For a fun challenge, give this a try with regular expressions.
# Can you think of other solutions besides regular expressions?

# Student submitted solution:
# Regex is a powerhouse for these kinds of string problems:

# def crunch(str)
#   str.gsub(/(.)\1+/, '\1')
# end
#   We can search for repeated instances of a character, and then easily replace
#   the repeated characters with just a single character.

# Breaking down the regex pattern /(.)\1+/:

# (.) looks for and captures a single character
# \1 then looks to see if the next character is the same as the captured
# character. Each time regex captures a characters, it assigns them to a
# 'capture group'. So, if you had a regex pattern /(.).(.)/ , it would look for
# 3 characters, and capture the 1st and 3rd character. Running the code
# 'xyz'.match(/(.).(.)/) would give you 'x' in capture group 1, and 'z' in
# capture group 2. Capture groups can be used for additional matching in regex
# patterns by invoking them with a backslash and the capture group number (i.e.
# \1, \2, etc.). Captured values can also be used as replacements characters, as
# seen in the string given after the regex pattern.
# + at the end of the regex looks for multiple instances of the character in the
#   capture group

