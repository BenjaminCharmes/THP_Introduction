# pyramide.rb = exo_16.rb

# Request a number between 1 and 25
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print ">"
stage_number = gets.chomp.to_i

until stage_number <= 25 and stage_number > 0
  puts "Choisis un nombre entre 1 et 25 !"
  print ">"
  stage_number = gets.chomp.to_i
end

# Builds the pyramid
stage = "#"

puts "Voici la pyramide :"

stage_number.times do
  puts stage.rjust(stage_number)
  stage += "#"
end