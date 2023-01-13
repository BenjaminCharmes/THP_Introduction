# 01_pyramids.rb

# Asks number of stage
puts ""
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "

stage = gets.chomp.to_i
puts ""

until stage % 2 != 0 and stage > 0
  puts "Choisis un nombre positif impair, merci !"
  print "> "
  stage = gets.chomp.to_i
  puts ""
end

# Builds the pyramid
puts "Voici la pyramide :"
puts ""

def pyramid(stage)
  (stage / 2).times do |top|
    print ' ' * (stage / 2 - top)
    puts '#' * (2 * top + 1)
    sleep (0.25)
  end
  1.times do |mid|
    puts '#' * stage
    sleep (0.25)
  end
  (stage / 2).times do |bot|
    print ' ' * (bot + 1)
    puts '#' * (stage - 2 - 2 * bot)
    sleep (0.25)
  end
  sleep (0.5)
  puts ""
  puts "À bientôt. 👋"
  puts ""
end

pyramid (stage)