# 03_stairway.rb

# Play the game !
def game
  puts ""
  puts "Bonjour jeune aventurier !"
  #sleep (1)
  puts ""
  puts "Il te faut monter ces 10 marches le plus rapidement possible."
  #sleep (1)
  puts ""
  puts "À toi de jouer !"
  #sleep (1)
  puts ""

  stair = 0
  turn = 0

  until stair > 9
    dice = rand(1..6)
    if dice >= 5
      puts "Tu as fait un #{dice}. 🎲"
      stair += 1
      #sleep (0.5)
      puts "Tu monte une marche, tu es maintenant sur la marche numéro #{stair}."
      puts ""
    elsif dice == 1
      if stair > 0
        puts "Tu as fait un #{dice}. 🎲"
        stair -= 1
        #sleep (0.5)
        puts "Tu descends d'une marche, tu es maintenant sur la marche numéro #{stair}."
        puts ""
      else
        puts "Tu as fait un #{dice}. 🎲"
        #sleep (0.5)
        puts "Tu es toujours sur la marche numéro #{stair}."
        puts ""
      end
    else
      puts "Tu as fait un #{dice}. 🎲"
      #sleep (0.5)
      puts "Il ne se passe rien, tu es toujours sur la marche numéro #{stair}."
      puts ""
    end
    turn += 1
    #sleep (1)
  end

  puts "Félicitation ! 🎉 Tu as réussi à monter cet escalier avec bravoure ! 💪"
  #sleep (1)
  puts ""
  puts "Je suis fier de toi jeune aventurier. 👏"
  #sleep (1)
  puts ""
  puts "Fin 🎬"
  puts ""
  return turn
end

# Fun to add sleep between each roll, but makes the games way too long to make an average time.
#game

# Average time to finish in 100 game
def average_finish_time
  array_turn = []
  100.times do
    turn = game
    array_turn.push(turn)
  end
  puts "La moyenne du nombre de tour est de: #{array_turn.sum / 100} tours."
end

average_finish_time
