puts "Enter your name"
name = gets.chomp
puts "-------------------------------------"
puts "Thank you for participating, #{name}!"
puts "Guess the number. You have 3 attempts to guess a number between 1 and 20."

# Generate a random number between 1 and 20
random_number = rand(1..20)

# Initialize the attempt counter
attempt = 1

# While loop to give 3 attempts
while attempt <= 3
  puts "Attempt #{attempt}: Enter a number between 1 and 20"
  guess = gets.chomp.to_i  # Convert the input to an integer to compare with `random_number`
  
  # Compare the guessed number with the random number
  if guess == random_number
    puts "#{guess} is correct!"
    puts "Congratulations, you guessed the number!"
    break  # Exit the loop because the number was guessed
  else
    puts "Try again..."
  end
  
  attempt += 1  # Increment the attempt counter
end

# If the number was not guessed after 3 attempts, show the correct number
if attempt > 3
  puts "Sorry, you're out of attempts. The number was #{random_number}."
end
