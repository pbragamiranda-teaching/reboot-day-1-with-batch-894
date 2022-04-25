# Define or own store with products and price (#hash)
store = {
  mango: 0.5,
  kiwi: 2,
  apple: 1,
  papaya: 2
}

# Greet the user
puts "-------------------"
puts "Welcome to our Store!"
puts "-------------------"
# Define an empty cart
cart = []
# (create loop here)
anwser = "yes"

until anwser == "checkout"
  # Display products and prices -> kiwi: 5EU
  store.each do |name, price|
    puts "#{name}: #{price} EU"
  end

  # Ask user what do you want to by
  puts "What do you want to buy?"
  # Get user anwser
  user_anwser = gets.chomp

  # if they pick a product:
  # check if product available
  if store.key?(user_anwser.to_sym)
    # if available
    #   add product to the cart
    cart << user_anwser
    puts "#{user_anwser} add to the cart"
  else
    # if not, tell item unavailable
    puts "Item unavailable."
  end

  # ask user if wants to buy another product or checkout
  puts "do you want to buy more products or checkout to quit.."
  anwser = gets.chomp
end

# cart = ["mango", "kiwi"]
bill = 0
# calculate the bill by add the price of each product
cart.each do |product|
  # check the store for the price of each product and update the value
  bill += store[product.to_sym]
end

# display the final bill
puts "your bill is: #{bill}"
