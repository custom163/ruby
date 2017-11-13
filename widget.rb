def ask(question)
  print question + " "
  gets.chomp
end

puts "Welcome to the widget store!"
answer = ask("How many widgets would you like to order?")
puts "You entered #{answer} widgets"
