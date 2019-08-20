require 'open-uri'
require 'nokogiri'

# def list_gifts(gifts)
#   puts 'Your gifts:'
#   gifts.each_with_index do |gift, index|
#     puts "#{index + 1}. #{gift.capitalize}"
#   end
# end

# def list(options)
#   puts 'What do you want to do?'
#   options.each_with_index do |action, index|
#     puts "#{index + 1}. #{action.capitalize}"
#   end
# end

def list(array)
  array.each_with_index do |element, index|
    puts "#{index + 1}. #{element}"
  end
end

def ask_user_for_index
  print '> '
  gets.chomp.to_i
end


# ENHANCED
def list_hash_gifts(gifts)
  gifts.each_with_index do |gift, index|
    # gift == { name: 'puppy', bought: false }
    status = gift[:bought] ? '[x]' : '[ ]'

    puts "#{status} #{index + 1}. #{gift[:name]}"
  end
end

def scrape_etsy(search_term)
  url = "https://www.etsy.com/search?q=#{search_term}"

  string = open(url).read
  nokogiri_object = Nokogiri::HTML(string)

  products = nokogiri_object.search('.text-gray.text-truncate').first(10).map do |element|
    element.text.strip
  end

  products
end


