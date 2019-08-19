require_relative 'shopping'
# Step 1 - The menu loop 🎁

# Welcome the user
puts 'Welcome to your Xmas gifts list'
puts '*******************************'
# initialize a gifts list

gifts = %w[laptop camera puppy]
options = %w[list add delete quit]
user_choice = nil

# LOOP (until quit)
until user_choice == 4
  # List options to user [list|add|delete|quit]
  puts '*******************************'

  puts 'What do you want to do?'
  options.each_with_index do |action, index|
    puts "#{index + 1}. #{action.capitalize}"
  end
  print = '> '
  user_choice = gets.chomp.to_i

  # check if the user gave us a valid number
  until user_choice > 0 && user_choice <= options.size
    puts 'Option invalid, try again'
    user_choice = gets.chomp.to_i
  end

  # if list
  if user_choice == 1
    list_gifts(gifts)
  elsif user_choice == 2
    puts 'What do you want to add to the list?'
    print '> '
    new_gift = gets.chomp
    gifts << new_gift
  elsif user_choice == 3
    puts 'Which item do you want to delete? (number)'
    list_gifts(gifts)
    print '> '
    index_of_gift_to_be_deleted = gets.chomp.to_i - 1
    gifts.delete_at(index_of_gift_to_be_deleted)
    p gifts
  elsif user_choice == 4
    # TODO
  end
end

puts 'Goodbye'
    # Display nicely formatted gifts
  # if add
    # Ask user what gift they want to add
    # save it in a variable
    # and store in our gifts list
  # if delete
    # Ask user which gift they want to delete (number)
    # remove the gift from the list
  # if quit
    # break the loop
# say goodbye
