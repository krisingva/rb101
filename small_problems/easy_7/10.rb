# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(string)
  string.split[-2]
end

# Examples:

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

# LS:

# Solution
# def penultimate(words)
#   words_array = words.split
#   words_array[-2]
# end

# Discussion
# In this problem we first break our words up and put them into an array.
# Anything that isn't whitespace is considered a word, so we can just use split
# to divvy up the words. Then, we use a negative index to grab the second to
# last object in our words array and return it to the caller.

# Just in case you aren't too familiar with negative indices, they start from
# the last item in an array and continue back through the array from there.

# -1 : last item in array. -2 : second to last item in the array.

# and so on.

# Further Exploration
# Our solution ignored a couple of edge cases because we explicitly stated that
# you didn't have to handle them: strings that contain just one word, and
# strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# 1. empty string should give an empty string
# 2. single word string will give word
# 3. if even amount of words, the middle word will be determined as the first
#    word after half.

def middle_word(string)
  arr = string.split
  if arr.size == 0
    ""
  elsif arr.size == 1
    arr[0]
  else arr.size > 1
    arr[(arr.size/2).round]
  end
end

p middle_word("") == ""
p middle_word("single") == "single"
p middle_word("hello there") == "there"
p middle_word("are you here?") == "you"

