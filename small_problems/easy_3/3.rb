# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

print "Please write word or multiple words: "
answer = gets.chomp
answer_size = answer.split(' ').join.size
puts %Q[There are #{answer_size} characters in "#{answer}".]

# LS Solution:
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."
# Discussion
# We don't want to count spaces here, so we use String#delete to return a new
# String with all spaces removed from it. The original string stored in input is
# left intact.
