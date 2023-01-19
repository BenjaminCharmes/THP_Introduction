# exo_07.rb

# Asks the user to choose a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i

count = 0

# Count up to this number
number.times do
    count += 1
    puts count
end