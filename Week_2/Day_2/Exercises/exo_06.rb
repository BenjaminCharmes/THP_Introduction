# exo_05.rb

# Asks the user to choose a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i - 1

# Write as many times minus one "Bonjour toi !"
number.times do 
    puts "Bonjour toi !"
end