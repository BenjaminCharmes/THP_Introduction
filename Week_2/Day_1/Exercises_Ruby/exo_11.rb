# exo_11.rb

# Say Hello and asks the user for a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i

# Write "Salut, ça farte ?" as many times
number.times do 
    puts "Salut, ça farte ?"
end