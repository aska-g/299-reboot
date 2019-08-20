require_relative 'shopping'

# Step 1 - The menu loop 🎁
# Step 2 - List, Add, Delete 🎁🎁


# Welcome the user
puts 'Welcome to your Xmas gifts list'
puts '*******************************'
# initialize a gifts list

# initialize the list

gifts = [
  { name: 'puppy',
    bought: false
  },
  { name: 'laptop',
    bought: true
  }
]

options = ['list', 'add', 'delete', 'change status', 'inspiration', 'quit']
user_choice = nil


until user_choice == 6
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
    puts "Your gifts:"
    # [x] 1. kitten
    # [ ] 2. laptop

    # status:
    # if true ==> '[x]'
    # if false ==> '[ ]'

    list_hash_gifts(gifts)

  # if add
  elsif user_choice == 2
    # Ask user what gift they want to add
    # save it in a variable
    puts 'What do you want to add to the list?'
    print '> '
    # save it in a variable
    gift_name = gets.chomp
    # and store in our gifts list
    gifts << { name: gift_name, bought: false }

  # if delete
  elsif user_choice == 3
    # Ask user which gift they want to delete (number)
    puts 'Which item do you want to delete? (number)'
    puts 'Your gifts:'
    list_hash_gifts(gifts)

    index_of_gift_to_be_deleted = ask_user_for_index - 1

    # remove the gift from the list
    gifts.delete_at(index_of_gift_to_be_deleted)

  # if change status
  elsif user_choice == 4
    # display all gifts
    list_hash_gifts(gifts)

    # ask which item?
    index = ask_user_for_index - 1

    # find the right gift in the array
    gift = gifts[index] # gift == { name: 'puppy', bought: false }

    # change status
    # gift[:bought] #==> false
    # !gift[:bought] #==> true
    # true           false
    # false          true
    gift[:bought] = !gift[:bought]

  # if inspiration
  elsif user_choice == 5
    # ask user for search term
    puts 'What do you want to search for?'
    print '> '

    # save it in a variable
    search_term = gets.chomp

    # scrape etsy
    etsy_products = scrape_etsy(search_term) # array of etsy products

    # display items (list array)
    list(etsy_products)

    # ask user which one they want to save
    puts 'Which one would you like to save?'
    index = ask_user_for_index - 1

    # store it in our gifts list
    new_gift = etsy_products[index] #=> 'Chocolate Skyy'

    # and store in our gifts list
    gifts << { name: new_gift, bought: false }



  # if quit
  elsif user_choice == 6
    # break the loop
    break
  end
end


puts 'Goodbye'











