VALID_ACTION = ['h', 's']
VALID = ['y', 'yes', 'n', 'no']
WINNING_NUMBER = 21
DEALER_STAY = 17
ROUNDS_FOR_WIN = 5

whole_deck = [2, 2, 2, 2,
              3, 3, 3, 3,
              4, 4, 4, 4,
              5, 5, 5, 5,
              6, 6, 6, 6,
              7, 7, 7, 7,
              8, 8, 8, 8,
              9, 9, 9, 9,
              10, 10, 10, 10,
              10, 10, 10, 10,
              10, 10, 10, 10,
              10, 10, 10, 10,
              [1, 11], [1, 11], [1, 11], [1, 11]]

def prompt(message)
  puts "=> #{message}"
end

def deal(deck)
  hand = deck.sample
  idx = deck.find_index(hand)
  deck.slice!(idx)
end

def show_hand(hand)
  show = hand.join(', ')
  show.gsub!("1, 11", "an Ace (value 1 or 11)")
  show
end

def show_dealer_first_card(crds)
  if crds[0].class == Array
    crd = crds[0].join(', ')
    crd.gsub!("1, 11", "an Ace (value 1 or 11)")
  else
    crd = crds[0]
  end
  crd
end

def initiate_game(player1, player2, deck)
  initial_deal_cards(player1, player2, deck)
  display_intro_message
  display_cards(player1, player2)
  display_player_total(player1)
end

def initial_deal_cards(player1, player2, deck)
  2.times do
    player1 << deal(deck)
  end
  2.times do
    player2 << deal(deck)
  end
end

def display_intro_message
  system 'clear'
  prompt "Welcome to Twentyone!"
  prompt "The winner of #{ROUNDS_FOR_WIN} rounds is the final winner"
end

def display_cards(player1, player2)
  prompt "Player has #{show_hand(player1)}"
  prompt "Dealer has #{show_dealer_first_card(player2)} and a mystery card"
end

def display_player_total(player1)
  prompt "Player has a total of #{calculate_total(player1)}"
end

def display_round_totals(player_rounds, dealer_rounds)
  total_for_rounds(player_rounds, dealer_rounds)
end

def calculate_total(cards)
  number_of_aces = cards.count([1, 11])
  if number_of_aces == 0
    total = cards.sum
  elsif number_of_aces > 0
    total = calculate_with_aces(cards)
  end
  total
end

def calculate_with_aces(cards)
  number_of_aces = cards.count([1, 11])
  conv_to_eleven = 0
  total = 0
  iterations = 2 * number_of_aces
  iterations.times do
    total = cards.flatten.sum - (1 * number_of_aces) - (11 * conv_to_eleven)
    number_of_aces -= 1
    conv_to_eleven += 1
    break if number_of_aces < 0 || total <= WINNING_NUMBER
  end
  total
end

# def play_again
#   prompt "Would you like to play again? (y/n)"
#   ans = gets.chomp
#   ans.downcase[0]
# end

ans = ''
def play_again(ans)
  loop do
    puts "Would you like to play again? (y/n)"
    ans = gets.chomp
    ans = ans.downcase
    if VALID.include?(ans)
      break
    else
      puts "Invalid choice"
    end
  end
  ans[0]
end

def display_end_of_play
  prompt "Thank you for playing, hope to see you again soon!"
end

def compare_totals(arr)
  if arr[0][1] > arr[1][1]
    arr[0][0]
  elsif arr[0][1] < arr[1][1]
    arr[1][0]
  else
    ''
  end
end

def winner_of_round(winner)
  if winner != ''
    prompt "#{winner} won!"
  else
    prompt "It's a tie!"
  end
end

def winner?(winner)
  winner != ''
end

def rounds_scores(winner, player_rounds, dealer_rounds)
  if winner == 'Player'
    player_rounds << 1
  elsif winner == 'Dealer'
    dealer_rounds << 1
  end
end

def total_for_rounds(player_rounds, dealer_rounds)
  prompt "Player has won #{player_rounds.size} rounds"
  prompt "Dealer has won #{dealer_rounds.size} rounds"
end

def total_winner(player_rounds, dealer_rounds)
  if player_rounds.size == ROUNDS_FOR_WIN ||
     dealer_rounds.size == ROUNDS_FOR_WIN
    end_of_game(player_rounds, dealer_rounds)
  end
end

def end_of_round(winner, player_rounds, dealer_rounds)
  winner_of_round(winner)
  rounds_scores(winner, player_rounds, dealer_rounds)
  total_for_rounds(player_rounds, dealer_rounds)
  total_winner(player_rounds, dealer_rounds)
end

def display_total_winner(player_rounds, dealer_rounds)
  if player_rounds.size == ROUNDS_FOR_WIN
    prompt "Player has won the game with 5 rounds!"
  elsif dealer_rounds.size == ROUNDS_FOR_WIN
    prompt "Dealer has won the game with 5 rounds!"
  end
end

def erase_scores(player_rounds, dealer_rounds)
  player_rounds.clear
  dealer_rounds.clear
end

def end_of_game(player_rounds, dealer_rounds)
  display_total_winner(player_rounds, dealer_rounds)
  erase_scores(player_rounds, dealer_rounds)
end

player_rounds = []
dealer_rounds = []

loop do
  deck = whole_deck.clone
  player_cards = []
  dealer_cards = []

  initiate_game(player_cards, dealer_cards, deck)
  player_total = calculate_total(player_cards)
  dealer_total = calculate_total(dealer_cards)
  winner = ''

  # player turn
  loop do
    break if player_total == WINNING_NUMBER
    prompt "Would you like to hit (press 'h') or stay (press 's')?"
    player_action = gets.chomp.downcase
    if VALID_ACTION.include?(player_action) == false
      prompt "That is not a valid choice"
      next
    elsif player_action == 'h'
      player_cards << deal(deck)
      player_total = calculate_total(player_cards)
      prompt "Player has #{show_hand(player_cards)}"
      if player_total < WINNING_NUMBER
        prompt "Player has a total of #{player_total}"
      elsif player_total > WINNING_NUMBER
        prompt "Player has busted!"
        winner = 'Dealer'
        break
      else
        prompt "Player has a total of #{player_total}"
        break
      end
    else
      prompt "Player has stayed with a total of #{player_total}"
      break
    end
  end

  if winner?(winner)
    end_of_round(winner, player_rounds, dealer_rounds)
    play_again(ans) == 'y' ? next : display_end_of_play
    break
  end

  # dealer turn
  loop do
    prompt "Dealer turn!"
    prompt "Hit enter when you are ready to proceed"
    gets.chomp
    system 'clear'
    prompt "Dealer has #{show_hand(dealer_cards)}"
    dealer_total = calculate_total(dealer_cards)
    prompt "Dealer has a total of: #{dealer_total}"
    if dealer_total < DEALER_STAY
      dealer_cards << deal(deck)
    elsif dealer_total > WINNING_NUMBER
      prompt "Dealer busted!"
      winner = 'Player'
      break
    else
      break
    end
  end

  if winner?(winner)
    end_of_round(winner, player_rounds, dealer_rounds)
    play_again(ans) == 'y' ? next : display_end_of_play
    break
  end

  prompt "Final scores: player had #{player_total}, dealer had #{dealer_total}."
  arr_totals = [['Player', player_total], ['Dealer', dealer_total]]
  winner = compare_totals(arr_totals)
  end_of_round(winner, player_rounds, dealer_rounds)
  play_again(ans) == 'y' ? next : display_end_of_play
  break
end
