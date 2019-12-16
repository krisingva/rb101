# Computer AI: Defense

# The computer currently picks a square at random. That's not very interesting.
# Let's make the computer defensive minded, so that if there's an immediate
# threat, then it will defend the 3rd square. We'll consider an "immediate
# threat" to be 2 squares marked by the opponent in a row. If there's no
# immediate threat, then it will just pick a random square.

# Notes: Make changes to method computer_places_piece! so that it will iterate
# through WINNING_LINES subarrays and determine if any subarrays as board hash
# keys have 2 values corresponding to PLAYER_MARKER. If so, iterate through
# subarray and find the index that when references as key in board hash, doesn't
# correspond to PLAYER_MARKER, bind that subarray index to square variable. If
# square variable is still referencing ' ' after this iteration, then assign a
# random square as before with empty_squares method.

PLAYER_SCORE = []
COMPUTER_SCORE = []
WINNING_SCORE = 5
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
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

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

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
        str << num.to_s
      else
        if arr.last == num
          str << sep + last_sep + " "
        else
          str << sep
        end
        str << num.to_s
      end
    end
  end
  str
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

def computer_places_piece!(brd)
  square = ''
  WINNING_LINES.each do |subarr|
    if brd.values_at(subarr[0], subarr[1], subarr[2]).count(PLAYER_MARKER) == 2
      0.upto(2) do |index|
        if brd[subarr[index]] == ' '
        # if brd[subarr[index]] != PLAYER_MARKER &&
        #   brd[subarr[index]] != COMPUTER_MARKER
          square = subarr[index]
        end
      end
    #break
    end
  end

  if square == ''
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
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
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
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
  else detect_winner(brd) == nil
  end
  prompt "Player has scored: #{PLAYER_SCORE.size}."
  prompt "Computer has scored: #{COMPUTER_SCORE.size}."
end

loop do
  prompt "Welcome to TicTacToe!"
  prompt "The first player to score #{WINNING_SCORE} points wins the game."
  prompt "Press enter when you are ready to play or press Ctrl+C to exit"
  ready = gets.chomp

  until PLAYER_SCORE.size == WINNING_SCORE ||
    COMPUTER_SCORE.size == WINNING_SCORE  do
    board = initialize_board

    loop do
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
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
    ready2 = gets.chomp

  end

  if PLAYER_SCORE.size == WINNING_SCORE
    prompt "Player is the winner!"
  else COMPUTER_SCORE.size == WINNING_SCORE
    prompt "Computer is the winner!"
  end

  prompt "Play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
