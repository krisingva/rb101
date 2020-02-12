# Card Deck
# We started working on a card game but got stuck. Check out why the code below
# raises a TypeError.

# Once you get the program to run and produce a sum, you might notice that the
# sum is off: It's lower than it should be. Why is that?

#require 'pry'

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit| # gives an array of keys that are iterated through
  #binding.pry
  cards = deck[suit]  # reassigning cards to value of current key
  p cards
  #binding.pry
  cards.shuffle!       # mixing cards array
  player_cards << cards.pop   # removing the last item of cards array
end

# Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

#   sum += remaining_cards.sum
# end

summed = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map do |card|
    sum += score(card)
  end
  sum
end

puts summed

# # Error message: 5.rb:46:in `+': :ace can't be coerced into Integer (TypeError).
# The problem in determining the score of the remaining_cards in the deck was
# that the score method was called for each card but that wasn't stored in a new
# array, therefore remaining_cards array was not being converted, it remained
# the same with all the "people" cards instead of the conversions to numbers.
# After fixing that part, the sum is still lower than it should be (it is 269
# combining player_cards and sum, but it should be 380). The problem is when the
# player_cards are dealt, each card that is picked, gets picked out of all the
# suits so the remaining cards are fewer than they should be. Because the deck
# hash was populated with the cards array as all the values for the different
# keys, when the cards array is modified (an item removed), it gets modified for
# all the suits instead of just one suit.
# To fix this, could create a deck where each card is assigned a suit and then
# draw from that deck.
# LS: The most straightforward solution is to clone the cards array when adding
# it to the deck.