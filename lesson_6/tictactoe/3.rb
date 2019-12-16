# Computer AI: Defense

# The computer currently picks a square at random. That's not very interesting.
# Let's make the computer defensive minded, so that if there's an immediate
# threat, then it will defend the 3rd square. We'll consider an "immediate
# threat" to be 2 squares marked by the opponent in a row. If there's no
# immediate threat, then it will just pick a random square.

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def computer_places_piece!(brd)
  square = ''
  WINNING_LINES.each do |subarr|
    if brd.values_at(subarr[0], subarr[1], subarr[2]).count(PLAYER_MARKER) == 2
      0.upto(2) do |index|
        if brd[subarr[index]] != PLAYER_MARKER
          square = subarr[index]
        end
      end
    break
    end
  end

  if square == ''
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end


def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return 'Computer'
    # end
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

board = initialize_board
board[1] = PLAYER_MARKER
board[3] = PLAYER_MARKER
board[9] = PLAYER_MARKER
board[5] = COMPUTER_MARKER
board[7] = COMPUTER_MARKER
p board
computer_places_piece!(board)
p board