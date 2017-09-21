# ask the user for a grade
  puts "What was your grade in Art?"
  grade = gets.chomp.to_i

  if grade >100
    puts "Wrong score"

  elsif grade >= 90 && grade <= 100
    puts "I got an A!"

  elsif grade >= 80 && grade <= 89
    puts "I got a B"

  elsif grade >= 70 && grade <= 79
    puts "I got a C"

  elsif grade >= 60 && grade <= 69
    puts "I got a stinking D!"

  elsif grade <60
    puts "Shoot, I got an F!"
  end
