# exo_13.rb

# create a list of 50 fake emails and store them in an array

email_list = []

(1..50).each do |i|
  puts "jean.dupont.%02d@email.fr" %[i]
  email_list.push(i)
end
