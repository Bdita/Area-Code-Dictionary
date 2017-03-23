@dial_book = {
     "Burwood" => "2134", "Strathfield" => "2135", "Newtown" => "2142", "Maroubra" => "2035", "Rosebay" => "2029", "Liverpool" => "2170", "Balmain" => "2041",
     "Petersham" => "2049", "Rozelle" => "2039", "Croydon" => "2132",
}

def display_city_names
     puts "Please choose from the following cities."
     puts "#{@dial_book.keys.join(', ')}"  #convert hash keys to array and join them with comma for display in one line
end

def area_code(suburb)
     puts "The area code of #{suburb} is #{@dial_book[suburb]}."
end

loop do
     puts "Do you want to look up an area code for a city?(Y/N)"

     answer = gets.chomp.upcase
     if answer != "Y"
          break
     end

     display_city_names
     puts "Enter your city of choice."
     city_name = gets.chomp.capitalize
     if @dial_book.has_key? (city_name)
          area_code(city_name)
     else
          puts "The city name doesn't exist in the address book."
     end
end
