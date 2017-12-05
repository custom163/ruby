def ask(question, kind="string")
  print question + " "
  answer = gets.chomp
  answer = answer.to_i if kind=="number"
  return answer
end

def add_contact
  contact = {"name" => "", "phone_numbers" => []}
  contact["name"] = ask("What is the persons name?")
  answer = ""
  while answer != "n"
    answer = ask("Do you want to add a phone number? (y/n)")
    if answer.downcase == "y"
      phone = ask("Enter the phone number?")
      contact["phone_numbers"].push(phone)
    end
  end
  return contact
end

contact_list = []

answer = ""
while answer.downcase != "n"
  contact_list.push(add_contact())
  answer = ask("Add another contact? (y/n)")
end

puts "-" * 10

contact_list.each do |contact|
  puts "Name: #{contact["name"]}"
  if contact["phone_numbers"].size > 0
    contact["phone_numbers"].each do |phone|
      puts "Phone: #{phone}"
    end
  end
  puts "-----\n"
end

