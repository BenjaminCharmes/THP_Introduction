# exo_11.rb

# Ask for the user's age
puts "Bonjour, Quel âge as-tu ?"
print "Âge: "
user_age = gets.chomp.to_i

count = 0

# Writes all the years from birth to today as well as the age of the user each year
puts "Il y a #{user_age} an(s), tu es né(e) !"

until count == user_age
    count += 1
    puts "Il y a #{user_age - count} an(s), tu avais #{count} an(s) !"
end