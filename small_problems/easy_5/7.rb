# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# Using previous solutions (Question 5 and 6):

upper_case_values = (65..90).to_a
lower_case_values = (97..122).to_a

alphabet_values = [32] << upper_case_values << lower_case_values
ALLOWED_VALUES = alphabet_values.flatten!

def cleanup(string)
  array = string.split(//)
  alphabet_index_array = []
  array.map.with_index do |x, i|
    alphabet_index_array << i unless ALLOWED_VALUES.include? x.ord
  end
  alphabet_index_array.each { |x| array[x] = ''}
  array.join
end

def word_sizes(words_string)
  words_string = cleanup(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

# Examples

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

# LS:

# Solution
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end
# Discussion
# The only change we need to make to this method is to make sure that it does
# not count non-letter characters in determining word sizes. This is easy to do:
# we simply delete all non-letters from each word before we compute the size.

# Further Exploration
# If you haven't encountered String#delete before, take a few minutes to read up
# on it, and its companion String#count (you need to read about #count to get
# all of the information you need to understand #delete).

# String#count:
# count([other_str]+) → integer
# Each other_str parameter defines a set of characters to count. The
# intersection of these sets defines the characters to count in str. Any
# other_str that starts with a caret ^ is negated. The sequence c1-c2 means all
# characters between c1 and c2. The backslash character \ can be used to escape
# ^ or - and is otherwise ignored unless it appears at the end of a sequence or
# the end of a other_str.

# String#delete:
# delete([other_str]+) → new_str
# Returns a copy of str with all characters in the intersection of its arguments
# deleted. Uses the same rules for building the set of characters as
# String#count.