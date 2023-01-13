# 02_password.rb

# Create a password
def signup
  puts ""
  puts "Choisissez un mot de passe."
  print "mot de passe: "
  password = gets.chomp
  return password
end

# Enter password 
def login(password)
  puts ""
  puts "Entrez votre mot de passe."
  print "mot de passe: "
  password_verif = gets.chomp
  puts ""
  until password == password_verif
    puts "Mauvais mot de passe, réessayez."
    print "mot de passe: "
    password_verif = gets.chomp
    puts ""
  end
end

# Enter the secret area
def welcome_screen
  puts "Bienvenue dans votre zone secrète. 🕵️‍♂️"
  puts ""
  sleep (1)
  puts "Attention ! Derrière vous ! Quelqu'un vous observe ! 👀"
  puts ""
  sleep (0.5)
  puts "Pour des raisons de sécurité, la zone secrète s'auto-détruira dans 5 secondes."
  puts ""
  count = 6
  number = 6
  if count > 0
    number.times do
      count -= 1
      puts count
      sleep (1)
    end
  end  
  puts ""
  puts "💥 BOOOOOM 💥"
  puts ""
end  

def perform
  password = signup
  password_verif = login(password)
  welcome_screen
end 

perform