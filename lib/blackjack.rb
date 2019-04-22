<<<<<<< HEAD
require 'pry'
=======

>>>>>>> ad92f3ffde6ab7fe11447cb8e764daa70ad6cd2b

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
<<<<<<< HEAD
  until input == "h" || input == "s"
  	invalid command
  	prompt user
  end
  if input == 'h'
    card_total += deal_card
    card_total
  else
    card_total
=======
  if input == 's'
    return card_total
  elsif input == 'h'
    new_total = deal_card + card_total
    return new_total
  else
    invalid_command
    prompt_user
>>>>>>> ad92f3ffde6ab7fe11447cb8e764daa70ad6cd2b
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
  card_total = initial_round
  until card_total > 21
<<<<<<< HEAD
    card_total = hit?(card_total)
=======
    hit?(card_total)
>>>>>>> ad92f3ffde6ab7fe11447cb8e764daa70ad6cd2b
    display_card_total(card_total)
  end
  end_game(card_total)
end
