# exo_12.rb

# Say Hello and asks the user for a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i

count = 0

# Count up to the chosen number
number.times do
    count += 1
    puts count
end
