require 'pry'
def welcome
   puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
   rand 1..11
  
  # code #deal_card here
end

def display_card_total(card_total)
  #binding.pry
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  
  sum1 = deal_card
  sum2 = deal_card
  sum3 = sum1 + sum2
  card_total = sum3
  display_card_total(card_total)
 
  # code #display_card_total here
   # code #display_card_total here
  # code #initial_round here
  
  return card_total
end



def hit?(current_card_total)
  
  count = 0 
  
  prompt_user
  user_input = get_user_input
  
  #binding.pry
  
 if user_input == "s"
   return current_card_total
   
   
 elsif user_input == "h"
   return deal_card + current_card_total
  
   
 else user_input != "s" && user_input != "h"
    invalid_command
    hit?(current_card_total)
   
 
  # code #prompt_user here
  # code hit? here
end
end




def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  count = 0 
  welcome
  card_total = initial_round
  
  #binding.pry
  until card_total >= 21
  card_total = hit?(card_total)
  display_card_total(card_total)
  # code runner here
end
end_game(card_total)
end
    
