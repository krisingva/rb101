# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Notes: Split string into array with space separator to get an array with each
# word from string as an element. Count the number of characters in each element
# and push to a new array (contains character count of each word). Example: [3,
# 5, 3, 3, 7]. Create a new array that only has uniq values, example: [3, 5, 7].
# Iterate through the uniq value array and for each element, count how many
# elements in character count array match by value. Hash keys will come from the
# uniq values array and hash values from counting how many times the hash key
# appears in character count array.

def word_sizes(string)
  array= string.split
  character_count = []
  array.each { |x| character_count << x.size }
  character_count.sort!
  uniq_array = character_count.uniq
  uniq_array.sort!

  hash_key = []
  hash_value = []
  counter = 0
  while counter < uniq_array.size do
    hash_key << uniq_array[counter]
    hash_value << character_count.count { |x| x == uniq_array[counter] }
    counter += 1
  end

  key_value_array = []
  key_counter = 0
  while key_counter < hash_key.size do
    key_value_array << [hash_key[key_counter], hash_value[key_counter]]
    key_counter += 1
  end
  key_value_array.to_h
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# LS (iterates through word array and creates key and value for hash in each
# step of iteration!):

# Solution
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end
# Discussion
# The main goal of this problem is to count the number of words of each size. To
# do that, we first need to obtain a list of the words. Once we have a word,
# computing its size is easy, but incrementing the count for words of that size
# is slightly trickier. If we initialize counts as

# counts = {}
# we will get an exception the first time counts[word.size] += 1 is executed.
# This is because that element doesn't exist, so counts[word.size] returns nil,
# and nil cannot be added to 1. To fix this, we use the default value form of
# initializing counts:

# counts = Hash.new(0)
# This forces any references to non-existing keys in counts to return 0.

# Further Exploration Take some time to read about Hash::new to learn about the
# different ways to initialize a hash with default values.