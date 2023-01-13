# exo_10.rb

# Ask for the year of birth of the user
puts "Bonjour, en quelle année es-tu né.e ?"
print "Année de naissance: "
user_birthdate = gets.chomp.to_i

count = user_birthdate

# Writes all the years from birth to today as well as the age of the user each year
puts "#{user_birthdate}: année de naissance."

while count < 2022
    count += 1
    puts "#{count}: Âge = #{count - user_birthdate} an(s)."
end