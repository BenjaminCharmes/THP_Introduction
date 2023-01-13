# exo_14.rb

# create a list of 50 fake emails and store them in an array
# Write only emails with an even number

email_even_list = []

(1..50).select(&:even?).each do |i|
  puts "jean.dupont.%02d@email.fr" %[i]
  email_even_list.push(i)
end