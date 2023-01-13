# exo_04.rb

# Ask for the year of birth of the user
puts "Bonjour, en quelle année es-tu né.e ?"
print "Année de naissance: "
user_birthdate = gets.chomp.to_i

# Write in which year the user will be 100 years old
puts "Tu auras 100 ans en #{user_birthdate + 100}."