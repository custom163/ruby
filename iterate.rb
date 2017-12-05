# each loop
array = [0, 1, 2, 3, 4, 5]
array.each do |item|
  item = item + 2
  puts "The current item + 2 is #{item}."
end

# Below is a way to put it all on one line
array.each {|item| puts "The current item is #{item}"}

# Example of iterating over a hash. This will get everything
business = { "name" => "ABC Widget", "location" => "Anchorage, Alaska" }
business.each do |key, value|
    puts "The key is #{key} and the value is #{value}."
end

# get the keys
business.each_key do |key|
    puts "Key: #{key}"
end

# get the values
business.each_value do |value|
    puts "Value: #{value}"
end

# do a loop a number of times, in this case 5
5.times do |item|
  puts "Yo Sup! #{item}"
end

# for loop with a range 1..3
for item in 1..3 do
  puts "The current item is #{item}."
end
