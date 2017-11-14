def ask(question)
  print question + " "
  gets.chomp
end

def price(quant)
    if quant >= 100
        price_per_item = 8
    elsif quant >= 50
        price_per_item = 9
    else
        price_per_item =  10
    end
    quant * price_per_item
end

puts "Welcome to the widget store!"
answer = ask("How many widgets would you like to order?")
number = answer.to_i
total = price(number)
puts "For #{answer} widgets, your total will be #{total}"
