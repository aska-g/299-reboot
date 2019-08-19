# Pseudo-code

# Step 1 - Dumb shopping 🛍

# 1. Print Welcome
puts 'Welcome to my store'

# 2. Define your store (what items are for sale? => hash)

store = {
  "kiwi" => 1.25,
  "banana" => 2,
  "mango" => 3,
  "eggs" => 5
}

# store['mango'] ==> 3
# store.keys => [kiwi, banana, mango, eggs]
# my cart => [kiwi, banana]

# 3. Display a list of availble items with their prices
# - kiwi: 1.25 NOK
puts "These are the available items:"
store.each do |item, price|
  puts "- #{item}: #{price} nok"
end

# 4. Get store from the user (shopping)
# => loop until they want to checkout
cart = []

user_item = nil

until user_item == 'q'
  puts "What do you want to buy? (press 'q' to checkout)"
  user_item = gets.chomp

  # a. if available, add to cart
  if store.key?(user_item)

    puts 'How many?'
    quantity = gets.chomp.to_i

    # [['kiwi', 2], ['banana', 10]]
    cart << [user_item, quantity]

  # b. if 'q', stop looping
  elsif user_item == 'q'
    break

  # c. if not, say 'it's unavailable'
  else
    puts 'Not available'
  end
end

# 5. Print all the items they bought and the bill (checkout)
puts "You bought:"

# cart => [['kiwi', 8], ['banana', 5]]

sum = 0
cart.each do |item_and_quantity|
  # item_and_quantity: ["kiwi", 8]
  item_name = item_and_quantity[0] #=> kiwi
  quantity = item_and_quantity[1] #=> 8

  price = store[item_name] #=> 1.25

  puts "- #{item_name}: #{price}kr (total: #{quantity * price} kr)"
  sum += (price * quantity)
end

# Calculating and printing the total price
# sum = 0

# cart.each do |item_and_quantity|
#   # item_and_quantity: ["kiwi", 8]

#   item_name = item_and_quantity[0] #=> kiwi
#   quantity = item_and_quantity[1] #=> 8

#   price = store[item_name]
#   sum += (price * quantity)
# end

# sum = cart.map { |item| store[item] }.sum

# cart = [banana, kiwi]
# cart.map { |item| store[item] } => [2, 1.25]
puts "Your total is #{sum}kr"

# Step 2 - Adding quantity 🛍🛍


# Step 3 - Adding availability 🛍🛍🛍
