# Improve the game loop

# There's a bit of redundant code in the main game loop:

# loop do
#   display_board(board)

#   player_places_piece!(board)
#   break if someone_won?(board) || board_full?(board)

#   computer_places_piece!(board)
#   break if someone_won?(board) || board_full?(board)
# end

# Notice how we have to break after each player makes a move. What if we could
# have a generic method that marks a square based on the player? We could do
# something like this:

# loop do
#   display_board(board)
#   place_piece!(board, current_player)
#   current_player = alternate_player(current_player)
#   break if someone_won?(board) || board_full?(board)
# end

# There are two new methods there: place_piece! and alternate_player. The
# place_piece! is a generic method that will know how to place the piece on the
# board depending on the current_player. That is, it will call
# player_places_piece! or computer_places_piece! depending on the value of
# current_player. The trick, then, is to keep track of a current_player, and to
# switch that variable's value after every turn.

# See if you can build those two methods and make this work.

FIRST_MOVE = 'choose'
VALID_FIRST_MOVE = ['player', 'computer']
PLAYER_SCORE = []
COMPUTER_SCORE = []
WINNING_SCORE = 5
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMP_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def pick_first_move
  answer = ''
  loop do
    prompt "Please pick who should go first (player or computer)"
    answer = gets.chomp
    if VALID_FIRST_MOVE.include?(answer)
      break
    else
      prompt "Please enter either 'player' or 'computer'!"
    end
  end
  answer
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMP_MARKER}."
  puts "Player has scored: #{PLAYER_SCORE.size}."
  puts "Computer has scored: #{COMPUTER_SCORE.size}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def joinor(arr, sep = ", ", last_sep = "or")
  str = ''
  case arr.size
  when 0
    str
  when 1
    str << arr[0].to_s
  when 2
    str << arr[0].to_s + " " + last_sep + " " + arr[1].to_s
  else
    arr.each do |num|
      if arr.first == num
      elsif arr.last == num
        str << sep + last_sep + " "
      else
        str << sep
      end
      str << num.to_s
    end
  end
  str
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  elsif current_player == 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    'computer'
  elsif current_player == 'computer'
    'player'
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def offense!(brd)
  square = ''
  WINNING_LINES.each do |subarr|
    if brd.values_at(subarr[0], subarr[1], subarr[2]).count(COMP_MARKER) == 2
      0.upto(2) do |index|
        if brd[subarr[index]] == ' '
          square = subarr[index]
        end
      end
      # puts "offense executed and square is #{square}"
    end
    break if square != ''
  end
  square
end

def defense!(brd)
  square = ''
  WINNING_LINES.each do |subarr|
    if brd.values_at(subarr[0], subarr[1], subarr[2]).count(PLAYER_MARKER) == 2
      0.upto(2) do |index|
        if brd[subarr[index]] == ' '
          square = subarr[index]
        end
      end
      # puts "defense executed and square is #{square}"
    end
    break if square != ''
  end
  square
end

def computer_places_piece!(brd)
  square = offense!(brd)
  square = defense!(brd) if square == ''

  if (square == '') && (empty_squares(brd).include?(5))
    square = 5
    # puts "if executed and square is #{square}"
  elsif square == ''
    square = empty_squares(brd).sample
    # puts "elsif executed and square is #{square}"
  end

  brd[square] = COMP_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # force the return value of line into a Boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMP_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def total_wins(brd)
  if detect_winner(brd) == 'Player'
    PLAYER_SCORE << 1
  elsif detect_winner(brd) == 'Computer'
    COMPUTER_SCORE << 1
  else detect_winner(brd).nil?
  end
  prompt "Player has scored: #{PLAYER_SCORE.size}."
  prompt "Computer has scored: #{COMPUTER_SCORE.size}."
end

loop do
  prompt "Welcome to TicTacToe!"
  prompt "The first player to score #{WINNING_SCORE} points wins the game."
  prompt "Press enter when you are ready to play or press Ctrl+C to exit"
  gets.chomp

  FIRST_MOVE = pick_first_move if FIRST_MOVE == 'choose'
  current_player = FIRST_MOVE

  until PLAYER_SCORE.size == WINNING_SCORE ||
        COMPUTER_SCORE.size == WINNING_SCORE
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won this round!"
    else
      prompt "It's a tie!"
    end

    total_wins(board)
    prompt "Press enter to continue or Ctr+C to exit program"
    gets.chomp

  end

  if PLAYER_SCORE.size == WINNING_SCORE
    prompt "Player is the winner!"
  elsif COMPUTER_SCORE.size == WINNING_SCORE
    prompt "Computer is the winner!"
  end

  prompt "Play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
