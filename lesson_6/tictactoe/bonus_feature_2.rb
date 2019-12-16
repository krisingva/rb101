# Keep score

# Keep score of how many times the player and computer each win. Don't use
# global or instance variables. Make it so that the first player to 5 wins the
# game.

# Notes: Initialize constants PLAYER_SCORE and COMPUTER_SCORE as empty arrays. As input for the new method total_wins, make method detect_winner return randomly 'Player', 'Computer' or nil to mimic the actual return of this method in the program. In method total_wins have a conditional where if detect_winner method returns 'Player' an item is added to PLAYER_SCORE array or if detect_winner returns 'Computer' an item is added to COMPUTER_SCORE array. The size of PLAYER_SCORE and COMPUTER_SCORE arrays will be used to give the total score of each player and determine when to terminate the loop (when either one has reached size 5).

PLAYER_SCORE = []
COMPUTER_SCORE = []

def detect_winner
  a = ['Player', 'Computer', nil].sample
end

def total_wins
  if detect_winner == 'Player'
    PLAYER_SCORE << 1
  else detect_winner == 'Computer'
    COMPUTER_SCORE << 1
  end
  puts "Player has scored: #{PLAYER_SCORE.size}."
  puts "Computer has scored: #{COMPUTER_SCORE.size}."
end

until PLAYER_SCORE.size == 5 || COMPUTER_SCORE.size == 5  do
  total_wins
end


