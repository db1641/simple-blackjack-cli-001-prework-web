def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  move = get_user_input
  if move == 's'
  end
  if move == 'h'
    card_total = card_total + deal_card
  end
  if move != 's' && move != 'h'
    invalid_command
    prompt_user
  end 
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  new_total=initial_round
  until new_total >= 21
    new_total = hit?(new_total)
    display_card_total(new_total)
    new_total
  end
  end_game(new_total)
end
    
