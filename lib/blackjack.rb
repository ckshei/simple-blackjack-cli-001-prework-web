def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  initialcount = deal_card + deal_card
  display_card_total(initialcount)
  return initialcount
end

def hit?(initial_round)
  prompt_user
  a = get_user_input

  if ( a === 's')
    return initial_round
  elsif (a === 'h')
    hittotal = initial_round + deal_card
    return hittotal
  else
    return invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cardtotal = initial_round
  until cardtotal > 21
    cardtotal = hit?(cardtotal)
    display_card_total(cardtotal)
  end
    end_game(cardtotal)
end