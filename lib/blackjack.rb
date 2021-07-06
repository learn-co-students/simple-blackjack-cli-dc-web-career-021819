def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(sum)
 prompt_user
  input = get_user_input
  if input == 'h' then
    sum += deal_card
    elsif input == 's' then
      sum
      else
       invalid_command
    end
end	



def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end

    
