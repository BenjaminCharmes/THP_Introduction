def hello
  puts "Hello!"
  return "Hello!"
end

def greet(name)
  puts "Hello, #{name}!"  
  return "Hello, #{name}!"  
end

def perform
  hello
  puts "What is your name ?"
  print "> "
  name = gets.chomp
  greet(name)
end

perform
