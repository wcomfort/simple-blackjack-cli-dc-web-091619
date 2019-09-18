require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11) 
end

def display_card_total(sum)
  puts "Your cards add up to #{sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp 
end

def end_game(sum)
 puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card 
display_card_total(sum)
sum 
end 

def hit?(sum)
  prompt_user
  input = get_user_input
  if input == "s"
    sum 
  elsif input == "h" 
    new_hand = deal_card
    sum = sum + new_hand 
  else 
    invalid_command
    prompt_user
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
  sum = initial_round
  until display_card_total(sum) >= 22
    hit?
    display_card_total(sum)
  end 
end_game
end
    
