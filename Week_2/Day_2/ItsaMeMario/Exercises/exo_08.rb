# exo_08.rb

# Asks the user to choose a number
puts "Bonjour, choisis un nombre ?"
print "Nombre: "
number = gets.chomp.to_i

count = number

# count down to zero
puts number

if count > 0
  number.times do
    count -= 1
    puts count
  end
end  