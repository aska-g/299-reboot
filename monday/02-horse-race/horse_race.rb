# horses_array is just a placeholder
# we can call it anything
def run_race(horses_array)
  horses_array.sample
end

def display_horses(horses)
  puts "Today's horses are:"

  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end
end

def display_results(users_horse, winner)
  if users_horse == winner
    puts 'You won'
  else
    puts "You lost. The winner was #{winner}"
  end
end
