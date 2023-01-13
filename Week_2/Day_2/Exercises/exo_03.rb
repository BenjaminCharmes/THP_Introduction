# exo_03.rb

# Ask for the year of birth of the user
puts "Bonjour, en quelle année es-tu né.e ?"
print "Année de naissance: "
user_birthdate = gets.chomp.to_i

# Writes the age of the user in 2017
puts "En 2017 tu avais #{2017 - user_birthdate} ans."