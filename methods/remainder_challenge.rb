# Welcome to the Remainder Challenge

# Divide 2 numbers and return the number and remainder

# If either number is NOT  an integer, don't aept the number and ask again.
# The number 0 is UNACCEPTABLE

def get_numbers
  # ask the user for a number
puts "enter a number:"
# get that number and save it
number = gets.chomp

if number.include?(".")
  puts "Try again, it needs to be an integer"

elsif number.to_i == 0

  puts "Try again, it needs to be an integer."


Def divide_with_remainder(number1, number2)
quotient = number1 / number2
remainder = number 1 % number 2
"The answer is #{quotient} remainder #{remainder}."
end

puts divide_with_remainder(6,4)


