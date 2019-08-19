require_relative 'calculator'

# Pseudo-code
# (what are the steps in plain english):

# STEP 1 - Dumb calculator

# 1. Say hello to the user
puts 'Hello'

answer = 'Y'

until answer == 'N'
  # 2. Ask user for the first number
  puts 'Give me the first number'

  # 3. Get user answer and save it in a variable
  first_number = gets.chomp.to_i

  # 4. Ask user for second number
  puts 'Give me the second number'

  # 5. Get user answer and save it in another variable
  second_number = gets.chomp.to_i

  # 6. Ask user for the operation (+-*/)
  puts 'Choose an operation [+, -, *, /]'

  operation = gets.chomp

  # 7. Perform the operation
  result = calculate(first_number, second_number, operation)

  # 8. Print the result
  puts "Result: #{result}"

  puts 'Do you want to continue? [Y|N]'
  answer = gets.chomp
end

puts 'Goodbye'



# STEP 2 - Make it loop

# STEP 3 - Refactor



# rewriting the if statement
  # case operation
  # when '+'
  #   result = first_number + second_number
  # when '-'
  #   result = first_number - second_number
  # when '*'
  #   result = first_number * second_number
  # when '/'
  #   result = first_number / second_number
  # end
