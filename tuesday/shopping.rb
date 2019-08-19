def list_gifts(gifts)
  puts 'Your gifts:'
  gifts.each_with_index do |gift, index|
    puts "#{index + 1}. #{gift.capitalize}"
  end
end
