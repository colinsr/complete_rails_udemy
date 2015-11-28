dial_book = {
    'New York'  => '212',
    'Cleveland' => '440',
    'Columbus'  => '614',
    'Miami'     => '404',
    'San Fran'  => '312',
    'Orlando'   => '407',
    'Austin'    => '512',
    'Toronto'   => '446',
    'Akron'     => '330',
    'Hartford'  => '860',
}

def lookup_prompt
  puts "\nDo you want to look up a city name? - Y / N"
end

def print_area_code_for_city(area_code_hash, city_name)
    puts "The area code for #{city_name} is #{area_code_hash[city_name]}.\n\n"
    sleep(1)
end

def print_cities(area_code_hash)
  area_code_hash.each { |key,val| puts key }
end

def print_try_again
  puts "Sorry that city is not in the directory, please try again.\n\n"
  sleep(1)
end

loop do
  print_cities(dial_book)
  lookup_prompt
  break if gets.chomp != "Y"
  
  puts "Enter the city name(from the list above) that you would like to look up."
  city = gets.chomp
  
  dial_book[city] ? print_area_code_for_city(dial_book,city) : print_try_again
end