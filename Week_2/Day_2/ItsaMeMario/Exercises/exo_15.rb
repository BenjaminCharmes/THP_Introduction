# exo_15.rb

# Request a number between 1 and 25
puts "Salut, bienvenue dans ma super pyramide ! Choisis un nombre entre 1 et 25:"
print ">"
stage_number = gets.chomp.to_i

until stage_number <= 25 and stage_number > 0
  puts "Choisis un nombre entre 1 et 25 !"
  print ">"
  stage_number = gets.chomp.to_i
end

# Builds the pyramid
stage = "#"
pyramide = []

puts "Voici la pyramide :"

stage_number.times do
  pyramide.push stage
  stage += "#"
end

puts pyramide