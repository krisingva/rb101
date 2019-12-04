# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Notes: Have to separate words from the '.' to be able to do the substitutions
# of word to digit. Use #gsub('.', ' .'), then perform substitution, use #gsub('
# .', '.') again to have the proper string returned.

def word_to_digit(str)
  arr = str.gsub('.', ' .').split.map do |word|
    case word
    when 'zero' then '0'
    when 'one' then '1'
    when 'two' then '2'
    when 'three' then '3'
    when 'four' then '4'
    when 'five' then '5'
    when 'six' then '6'
    when 'seven' then '7'
    when 'eight' then '8'
    when 'nine' then '9'
    else word
    end
  end
  arr.join(' ').gsub(' .', '.')
end

# LS:
# Solution
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end

# Discussion
# This one is a bit tricky. First, we define a hash that serves as a dictionary
# for converting words to digits. It's useful to store values we want to convert
# in one place, and a hash works nicely for this. If we replace the word 'eight'
# in a sentence, we can use DIGIT_HASH to find the value that should replace it.

# Within our word_to_digit method, we must convert all the words from zero to
# nine to digits. To do that, we iterate through all the number words we want to
# replace, and replace all instances of the word with the corresponding digit.

# We use the gsub! method to replace all instances of each number word. Here, we
# use a regex to look for a word in the string passed in and replace it with the
# corresponding digit. The word to look for is interpolated into the regex,
# /\b#{word}\b/. We use \b to limit the operation to complete words, not
# substrings. For instance, if the phrase/sentence passed into the method has
# the word "freight" in it, we won't replace it. If we don't use \b, we would
# convert "freight" to "fr8".

# Example:

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'