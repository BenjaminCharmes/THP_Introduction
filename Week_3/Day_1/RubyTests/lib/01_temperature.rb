# 01_temperature.rb

# Convert F to C
def ftoc(tempf)
  tempc = (tempf.to_f - 32) * 5/9
  puts "#{tempc} C"
  return tempc 
end

# Convert C to F
def ctof(tempc)
  tempf = (tempc.to_f * 9/5) + 32
  puts "#{tempf} F"
  return tempf
end

def perform
  puts "Do you want convert to C or to F ?"
  puts "Press 1 to C and 2 to F."
  print "> "
  conv = gets.chomp
  if conv == "1" || conv == "2"
    if conv == "1"
      puts "Enter temperature in F:"
      print "> "
      tempf = gets.chomp
      ftoc(tempf)
    elsif conv == "2"
      puts "Enter temperature in C:"
      print "> "
      tempc = gets.chomp
      ctof(tempc)
    end
  else
    puts "Sorry, try again !"
  end 
end 

perform