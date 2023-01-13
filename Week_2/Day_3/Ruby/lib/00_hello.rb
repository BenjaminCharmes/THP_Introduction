# 00_hello.rb

# Method that ask user's first name
def ask_first_name
  puts ""
  puts "Bonjour, quel est ton prénom ?"
  puts ""
  print "Prénom: "
  first_name = gets.chomp
  puts ""
  return first_name
end

# Method that says hello 
def say_hello(first_name)
  puts "Bonjour, #{first_name} ! 👋"
  puts ""
end

# Method that perform both previous method
def perform
  first_name = ask_first_name
  say_hello(first_name)
end

perform
