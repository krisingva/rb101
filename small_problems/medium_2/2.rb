# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# Notes:
# Input: String of one word
# Output: Boolean, true if word can be spelled with blocks, otherwise false.
# Rules:
# Blocks: Each block has two letters. Each block can only be used once per word.
# Algo/Data:
# Create a hash containing numbers as keys (1-13) and the letters of the block
# in an array as values.
# Iterate through input string and match with hash values, if hit, remove the
# key-value pair from hash. If all the characters of the string have a match,
# return true, if not, return false.

BLOCKS = {
  1 => ["B", "O"],
  2 => ["X", "K"],
  3 => ["D", "Q"],
  4 => ["C", "P"],
  5 => ["N", "A"],
  6 => ["G", "T"],
  7 => ["R", "E"],
  8 => ["F", "S"],
  9 => ["J", "W"],
  10 => ["H", "U"],
  11 => ["V", "I"],
  12 => ["L", "Y"],
  13 => ["Z", "M"]
}.freeze


def block_word?(str)
  str = str.upcase
  blocks = BLOCKS.dup
  boolean = true
  str.each_char do |char|
    if blocks.values.any? { |subarr| subarr[0] == char || subarr[1] == char }
      blocks.delete_if { |k, v| v[0] == char || v[1] == char }
    else
      boolean = false
      break
    end
  end
  boolean
end

# Examples:

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# LS:
# Solution

# BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

# def block_word?(string)
#   up_string = string.upcase
#   BLOCKS.none? { |block| up_string.count(block) >= 2 }
# end

# Discussion
# The first thing we want to consider is how we should organize our blocks; we
# want to be able to check each block easily to make sure that a valid block
# word is passed to this method.

# For this solution, we'll use an array of two letter strings. We'll use this
# array to check that the word passed in doesn't contain two letters from any
# block. We also want to make sure that no block is used more than once. If both
# those conditions are met, then we have a valid block word.

# In the solution the String#count method is used. This allows us to count the
# number of occurrences of a collection of characters. The collection of
# characters will be each block we want to check. If we find a count of 2 or
# greater, then we know that either both block characters are contained within
# the string, or that a character from the current block occurs more than once
# in that string.

# The final item of note is that we must convert the input string to uppercase,
# just in case it contains lowercase letters.

# Further Exploration
# Did you use a different data structure for organizing your blocks? Were those
# blocks 2 letter strings or something else? What method did you use to check if
# a string had 2 letters from a single block? There are several different
# possibilities for solving this exercise.