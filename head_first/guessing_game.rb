#! /usr/bin/ruby
#
# Guess My Number Game
# Author: Isreal Varela isrealv@yahoo.com
# Date: 12/27/2017
#

puts "Welcome to 'Guess My Number!''"

#Prompt for player name
print "Enter your name: "
name = gets.chomp
puts "Welcome #{name}!"

# Create a random number for the player to guess.
puts "I've got a number between 1 and 100."
puts "Can you guess it?"
secret_number = rand(100) + 1

# Track how many guesses the player has made
num_guesses = 0

# Track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it
  puts "You have #{10 - num_guesses} guesses left."
  print "Enter your guess: "
  guess = gets.to_i
  num_guesses += 1

  # Compare the guess to the secret_number
  # Print the appropriate message
  if guess > secret_number
      puts "Oops. Your guess was to High"
  elsif guess < secret_number
      puts "Oops. Your guess was to Low"
  elsif guess == secret_number
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

# If the player didn't guess in time, show the target number.
unless guessed_it
  puts "Sorry, You didn't get my nuber. My number was #{secret_number}"
end
