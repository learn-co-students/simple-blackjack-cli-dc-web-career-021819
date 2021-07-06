def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card =rand(11) +1
  card
end

def display_card_total (total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
  input
end

def end_game (total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  init = deal_card + deal_card
  display_card_total (init)
  init
end

def hit? (total)
  # code hit? here
  prompt_user
  ch = get_user_input
  if (ch == "h")

    c = deal_card

    total += c

  elsif (ch == "s")
  else invalid_command
  end

  total
end

def invalid_command
  # code invalid_command here
  puts "Invalid Command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  t = initial_round
  until t > 21
    t = hit? (t)
    display_card_total (t)



  end
end_game (t)

end
