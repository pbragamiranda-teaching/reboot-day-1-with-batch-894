# Welcome user to horse race
puts "Welcome to our Horse Race!"

# (declare balance variable)
# Add balance to user + if win bet +50, if loses bet -10
balance = 100

# Display the racing horses (array of horses) ["Ronaldo", "Celine Dion"]
horses = ["Ronaldo", "Beyonce", "Angela Merkel", "Black Betty"]

# 1- Rolando
# 2- Beyonce
# ...
# = -> assigning a value to a variable
user_anwser = "yes"

# Create a loop structure (conditon is the user awnswer)
# == -> comparison
while user_anwser == "yes"

  # Check if user has enough money to bet (needs at least 10EU)
  if balance >= 10
    # if user has enough money
    #   # play again
    puts "your current balance is: #{balance}"

    horses.each_with_index do |horse, index|
      puts "#{index + 1} - #{horse} "
    end

    # Ask what horse he / she wants to bet on
    puts "Which horse do you want to bet? (give me an index)"
    # Get answer
    user_horse_index = gets.chomp.to_i - 1
    # Race! (randomize horse array)
    winning_horse = horses.sample
    winning_horse_index = horses.index(winning_horse)

    # Check if the user choose the winnig horse or not
    if winning_horse_index == user_horse_index
      # if yes -> tell user you won!
      puts "The winning horse is: #{winning_horse}"
      puts "You won!"
      balance += 50
    else
      # if no -> try again my friend, so sorry.
      puts "The winning horse is: #{winning_horse}"
      puts "You lost!"
      balance -= 10
    end
    # your currernt balance is
    puts "your current balance: #{balance}"
  else
    # if not
    # say not enought funds.
    puts "Sorry, not enough funds!"
    user_anwser = "no"
  end

  puts "You want to bet again? [ yes | no ] "
  play_again = gets.chomp
  user_anwser = play_again
end

puts "Thanks for playing.."



