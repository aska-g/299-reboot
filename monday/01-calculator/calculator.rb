def calculate(first, second, action)
  if action == '+'
    return first + second
  elsif action == '-'
    return first - second
  elsif action == '*'
    return first * second
  elsif action == '/'
    return first / second
  else
    puts 'operation doesnt exist'
  end
end
