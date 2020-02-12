# Neutralizer
# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?

# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# Fix:
def neutralize(sentence)
  words = sentence.split(' ')
  words_clone = words.dup
  words_clone.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# When you use the destructive method Array#delete while iterating through an
# array, the method will skip an item because the indexes have changed. To fix
# this, make a clone of the array that you iterate through while mutating the
# actual array.

# LS:
# Solution
# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.reject! { |word| negative?(word) }
#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# #=> These cards are part of a board game.
# Discussion
# While iterating over an array, avoid mutating it from within the block.
# Instead you can use the Array methods select or reject/reject!.

