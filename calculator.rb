# (create the calculator.rb file inside the /lib folder)

def calculator(first_number, second_number, operator)
# (case / when to check what operations and execute it properly)
# if statement to check the operator
# if + -> addition
# elsif - - subtraction
# elsif -> * multiplication
# elsif -> / division
# else -> "Wrong input."
  # if operator == "+"
  #   return first_number + second_number
  #   # return "#{first_number} + #{second_number}"
  # elsif operator == "-"
  #   return first_number - second_number
  # elsif operator == "*"
  #   return first_number * second_number
  # elsif operator == "/"
  #   return first_number / second_number
  # else
  #   return "Wrong input!"
  # end
  case operator
  when "+"
    return first_number + second_number
  when "-"
    return first_number - second_number
  when "*"
    return first_number * second_number
  when "/"
    return first_number / second_number
  else
    return "wrong input!"
  end
end
