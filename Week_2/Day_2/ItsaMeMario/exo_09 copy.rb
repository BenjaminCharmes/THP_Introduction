# exo_09.rb

# Ask for the year of birth of the user
puts "Bonjour, en quelle année es-tu né.e ?"
print "Année de naissance: "
user_birthdate = gets.chomp.to_i

count = user_birthdate

# Writes all the years since his birth until today
puts user_birthdate

while count < 2022
    count += 1
    puts count
end