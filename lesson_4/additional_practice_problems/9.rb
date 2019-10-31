# As we have seen previously we can use some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize. This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

#would be:

# words = "The Flintstones Rock"

#Write your own version of the rails titleize implementation.

# using capitalize:
# array = words.split
# array.map! { |word| word.capitalize }
# p array.join(" ")

# above can be shortened to:
# words.split.map { |word| word.capitalize }.join(" ")

# using upcase:
array = words.split
array.map! do |word|
  word[0]= word[0].upcase
  word
end
p array.join(" ")