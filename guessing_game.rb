# Ask the user for a number
puts 'Give me a number between 1 and 10:'
guess = gets.chomp.to_i

comp_num = rand(1..10)

# See if the number is the same as the computer's number
# Tell them if they got it right.
unless guess == comp_num
  puts "No, sorry. It was #{comp_num}."
else
  puts "You got it!"
end