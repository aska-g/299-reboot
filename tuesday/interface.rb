require_relative 'shopping'

# Step 1 - The menu loop 🎁
# Step 2 - List, Add, Delete 🎁🎁


# Welcome the user
puts 'Welcome to your Xmas gifts list'
puts '*******************************'
# initialize a gifts list

gifts = %w[laptop camera puppy]
options = %w[list add delete quit]

user_choice = nil

# LOOP (until quit)
until user_choice == 4
  puts '*******************************'

  # List options to user [list|add|delete|quit]
  puts 'What do you want to do?'
  list(options)

  user_choice = ask_user_for_index

  # check if the user gave us a valid number
  until user_choice > 0 && user_choice <= options.size
    puts 'Option invalid, try again'
    user_choice = gets.chomp.to_i
  end

  # if list
  if user_choice == 1
    # Display nicely formatted gifts
    puts 'Your gifts:'
    list(gifts)

  # if add
  elsif user_choice == 2
    # Ask user what gift they want to add
    puts 'What do you want to add to the list?'
    print '> '
    # save it in a variable
    # gift == { name: 'puppy', bought: false }
    new_gift = gets.chomp
    # and store in our gifts list
    gifts << new_gift
  # if delete


  elsif user_choice == 3
    # Ask user which gift they want to delete (number)
    puts 'Which item do you want to delete? (number)'
    puts 'Your gifts:'
    list(gifts)
    index_of_gift_to_be_deleted = ask_user_for_index - 1

    # remove the gift from the list
    gifts.delete_at(index_of_gift_to_be_deleted)

  # if quit
  elsif user_choice == 4
    # break the loop
    break
  end
end

# say goodbye
puts 'Goodbye'
