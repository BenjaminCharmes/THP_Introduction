# exo_10.rb

# Say Hello and ask user's year of birth
puts "Bonjour, en quelle année es-tu né.e ?"

# User write his year of birth
print "Année de naissance: "
user_birthdate = gets.chomp.to_i

# Write user's age in 2017
puts "En 2017 tu avais #{2017 - user_birthdate} ans"