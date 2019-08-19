require_relative 'horse_race'
# Pseudo-code:

horses = ['Lucky Duck', 'The Ace', 'The Prince', 'Luna']
# lucky duck == Lucky Duck #=> false

# STEP 1 - Dumb horse race
# 1. Print welcome
puts '*************************'
puts '** Welcome to the race **'
puts '*************************'

# LOOP
answer = nil

# STEP 2 - Make it loop!
until answer == 'q'
  # 2. Print the horses names (horses live in an array)
  display_horses(horses)

  # 2. Get user's bet and save it in a variable
  puts 'Which horse are you betting on? (number)'

  users_horse = horses[gets.chomp.to_i - 1]

  # 3. Run the race 🐴 (computer chooses the winner)
  # horses are NOT a placeholder but our ARRAY from line 4
  winner = run_race(horses)

  # 4. Print results (compare user to computer choices)

  display_results(users_horse, winner)

  puts 'Want to bet again? (any key to continue or "q" to quit)'
  answer = gets.chomp
end

puts 'Goodbye'



