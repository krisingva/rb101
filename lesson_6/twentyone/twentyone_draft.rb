VALID_ACTION = ['h', 's']

deck = [2, 2, 2, 2,
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
  2.times do
    player1 << deal(deck)
  end
  2.times do
    player2 << deal(deck)
  end
  system 'clear'
  prompt "Welcome to Twentyone!"
  prompt "Player has #{show_hand(player1)}"
  prompt "Dealer has #{show_dealer_first_card(player2)} and a mystery card"
  prompt "Player has a total of #{calculate_total(player1)}"
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
    break if number_of_aces < 0 || total < 21
  end
  total
end

def compare_totals(arr)
  if arr[0][1] > arr[1][1]
    prompt "#{arr[0][0]} won!"
  elsif arr[0][1] < arr[1][1]
    prompt "#{arr[1][0]} won!"
  else
    prompt "It's a tie"
  end
end

loop do
  player_cards = []
  dealer_cards = []
  initiate_game(player_cards, dealer_cards, deck)
  player_total = calculate_total(player_cards)
  dealer_total = calculate_total(dealer_cards)
  winner = ''

  # player turn
  loop do
    prompt "Would you like to hit (press 'h') or stay (press 's')?"
    player_action = gets.chomp.downcase
    if VALID_ACTION.include?(player_action) == false
      prompt "That is not a valid choice"
      next
    elsif player_action == 'h'
      player_cards << deal(deck)
      player_total = calculate_total(player_cards)
      prompt "Player has #{show_hand(player_cards)}"
      if player_total <= 21
        prompt "Player has a total of #{player_total}"
      elsif player_total > 21
        prompt "Player has busted!"
        winner = 'Dealer'
        break
      end
    else
      prompt "Player has stayed with a total of #{player_total}"
      break
    end
  end

  if winner != ''
    prompt "#{winner} won!"
    prompt "Would you like to play again? (y/n)"
    ans = gets.chomp
    next if ans.downcase[0] == 'y'
    break
  end

  # dealer turn
  loop do
    prompt "Dealer turn!"
    prompt "Dealer has #{show_hand(dealer_cards)}"
    dealer_total = calculate_total(dealer_cards)
    prompt "Dealer has a total of: #{dealer_total}"
    if dealer_total < 17
      dealer_cards << deal(deck)
    elsif dealer_total > 21
      prompt "Dealer busted!"
      winner = 'Player'
      break
    else
      break
    end
  end

  if winner != ''
    prompt "#{winner} won!"
    prompt "Would you like to play again? (y/n)"
    ans = gets.chomp
    next if ans.downcase[0] == 'y'
    break
  end

  prompt "Final scores: player had #{player_total}, dealer had #{dealer_total}."
  arr_totals = [['Player', player_total], ['Dealer', dealer_total]]
  compare_totals(arr_totals)
  prompt "Would you like to play again? (y/n)"
  ans = gets.chomp
  next if ans.downcase[0] == 'y'
  break
end

prompt "Thank you for playing, hope to see you again soon!"
