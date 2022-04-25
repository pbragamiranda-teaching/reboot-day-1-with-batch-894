require_relative "calculator.rb"
# basic calculator with 4 basic operations

# Say hello to my calculator to the user
puts "Hello! Welcome to our calculator"

answer = "yes"

# (create the loop structure to keep asking if she / he wanst to do a calculation)
# until answer == "no"
while answer == "yes"
  # Ask user the first number he / she wants do a calculation with
  puts "What is the first number?"
  # Get user answer
  first_number = gets.chomp.to_f
  # Ask user the second number he / she wants do a calculation with
  puts "What is the second number?"
  # Get user answer
  second_number = gets.chomp.to_f
  # Ask user the operation [ + | - | * | /]
  puts "What is the operator?"
  # Get the answer
  operator = gets.chomp
  # Execute the calculation / Display the calculation answer
  result = calculator(first_number, second_number, operator)
  puts result
  # Ask the user if he / she wants to do another calculation [ y | n ]
  puts "Another calculation? [yes | no]"
  # Get the answer
  user_answer = gets.chomp
  # user answer NO
  # user_answer = "NO"
  # (check the answer / update the loop condition)
  answer = user_answer
end
