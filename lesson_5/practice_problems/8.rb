# Using the each method, write some code to output all of the vowels from the
# strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# String#=~ method to match each character of the string against a pattern
# specified by a regular expression. The block will return a truthy value if
# there is a match, nil otherwise.
# char =~ /[a-z]/ : This checks if the character is a lowercase letter between a
# and z.
# char =~ /[a-z]/i : Regular expression with the /i flag (ignore case) to detect
# all alphabetical letters.

hsh.each_value do |array|
  array.each do |string|
    string.each_char do |ch|
      if ch =~ /[aeiou]/i
        puts "#{ch}"
      end
    end
  end
end

# LS:

# vowels = 'aeiou'

# hsh.each do |_, value|
#   value.each do |str|
#     str.chars.each do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end
# e
# u
# i
# o
# o
# u
# e
# o
# e
# e
# a
# o
# The key here is to first iterate through the hash to access the values (the
# arrays) and then iterate through each array to access each string. At this
# point String#chars can be called within the block to return an array of
# characters for that string in that iteration, this array of characters can
# itself then be iterated through and puts called if on its iteration the
# character meets a condition (in this case that it is present in the vowels
# variable).

# Note that we used each here, which means each iteration has an argument for a
# key and one for the value. Since we don't care about the key, we just use _ to
# signify that this is an argument that we aren't going to use. We could also
# have used Hash#values as well.