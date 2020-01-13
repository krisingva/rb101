VALID_FIRST_MOVE = ['p', 'c']
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

def game_introduction
  prompt "Welcome to TicTacToe!"
  prompt "The first player to score #{WINNING_SCORE} points wins the game."
  prompt "Press enter when you are ready to play or press Ctrl+C to exit"
  gets.chomp
end

def pick_first_move
  answer = ''
  loop do
    prompt "Please pick who should go first"
    prompt "Enter p for player or c for computer"
    answer = gets.chomp
    if VALID_FIRST_MOVE.include?(answer)
      break
    else
      prompt "Please enter either p for player or c for computer!"
    end
  end
  answer
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def display_board(brd, pl_sc, comp_sc)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMP_MARKER}."
  puts "Player has scored: #{pl_sc.size}."
  puts "Computer has scored: #{comp_sc.size}."
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
  if current_player == 'p'
    player_places_piece!(brd)
  elsif current_player == 'c'
    computer_places_piece!(brd)
  end
end

def alternate_player(player)
  if player == 'p'
    'c'
  elsif player == 'c'
    'p'
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
    end
    break if square != ''
  end
  square
end

def center_square(brd)
  square = ''
  square = 5 if empty_squares(brd).include?(5)
  square
end

def computer_places_piece!(brd)
  square = offense!(brd)
  square = defense!(brd) if square == ''
  square = center_square(brd) if square == ''
  square = empty_squares(brd).sample if square == ''
  brd[square] = COMP_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
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

def display_round_winner(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won this round!"
  else
    prompt "It's a tie!"
  end
end

def total_wins(brd, pl_sc, comp_sc)
  if detect_winner(brd) == 'Player'
    pl_sc << 1
  elsif detect_winner(brd) == 'Computer'
    comp_sc << 1
  else detect_winner(brd).nil?
  end
end

def display_score(pl_sc, comp_sc)
  prompt "Player has scored: #{pl_sc.size}."
  prompt "Computer has scored: #{comp_sc.size}."
end

def declare_winner(pl_sc, comp_sc)
  if pl_sc.size == WINNING_SCORE
    prompt "Player is the winner!"
  elsif comp_sc.size == WINNING_SCORE
    prompt "Computer is the winner!"
  end
end

def play_again?
  prompt "Play again?"
  word = gets.chomp
  word
end

loop do
  player_score = []
  computer_score = []
  game_introduction

  until player_score.size == WINNING_SCORE ||
        computer_score.size == WINNING_SCORE
    board = initialize_board
    current_player = pick_first_move

    loop do
      display_board(board, player_score, computer_score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, player_score, computer_score)
    display_round_winner(board)
    total_wins(board, player_score, computer_score)
    display_score(player_score, computer_score)
    declare_winner(player_score, computer_score)
    prompt "Press enter to continue or Ctr+C to exit program"
    gets.chomp
  end

  break unless play_again?.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
