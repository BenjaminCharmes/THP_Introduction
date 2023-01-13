# exo_09.rb

# Say Hello and ask for user's name
puts "Bonjour, c'est quoi ton prénom ?"

# User write his name
print "Prénom: "
user_name = gets.chomp

# Then ask for user's surname
puts "Et ton nom ?"

# User write his surname
print "Nom: "
user_lastname = gets.chomp

#Say Hello with user's fullname
puts "Bonjour, #{user_name} #{user_lastname} !"