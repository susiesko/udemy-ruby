def get_cities
  {
    "city1"=>"212",
    "city2"=>"323",
    "city3"=>"434",
    "city4"=>"545",
    "city5"=>"656",
    "city6"=>"767",
    "city7"=>"878",
    "city8"=>"989",
    "city9"=>"909",
    "city10"=>"919",
  }
end

def welcome_message
  puts "Welcome!"
  puts "Here are a list of cities to search"
  
  get_cities.each do |key,value|
    puts key
  end
end

def run_search
  while true
    break;
  end 
end

def get_search_input
  print "Enter a city name:"
  return gets.chomp.downcase
end

def search(search_term)
  get_cities.each do |key,value|
    if key == search_term
      return value
    end
  end
  return ''
end

def should_abort
  puts "Type 'exit' to exit.  Type anything else to continue."
  return gets.chomp.downcase == 'exit'
end

def main
  welcome_message
  
  while true
    input = get_search_input
    result = search(input)

    if result.empty?
      puts "No results found."
    else
      puts "The area code is #{result}"
    end

    if should_abort
      break
    end
  end

end

main
