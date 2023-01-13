# exo_05.rb

# Asks the user to choose a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i

# Write as many times "Salut, ça farte ?"
number.times do
    puts "Salut, ça farte ?"
end