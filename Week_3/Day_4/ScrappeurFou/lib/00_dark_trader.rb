# 00_dark_trader.rb

require 'json'

require 'nokogiri'

require 'open-uri'

# Error open-uri: lib/00_dark_trader.rb:8: warning: calling URI.open via Kernel#open is deprecated, call URI.open directly or use URI#open
# def get_all_crypto_symbol


def scrapper
  puts " "
  print "Login to CoinMarketCap "
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print " "
  puts " Done ✅"
  puts " "
  sleep(0.5)
  return page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all'))
end

def array_of_names(page)
  array_names=[]
  print "Recovery cryptos names "
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print " "
  name_of_crypto=page.xpath('//tr//td[3]')
  puts " Done ✅"
  puts " "
  sleep(0.5)
  name_of_crypto.each{|name|
  array_names << name.text.to_s
  }
  return array_names
end 

def array_of_prices(page)
  array_prices=[]
  print "Recovery cryptos prices "
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print " "
  prices_of_crypto=page.xpath('//tr//td[5]')
  puts " Done ✅"
  puts " "
  sleep(0.5)
  prices_of_crypto.each{|price|
  array_prices << price.text.gsub(/[$,]/, '').to_f
  }
  return array_prices
end 

def array_of_hash(array_names, array_prices)
  data = []

  array_length = array_prices.length

  print "Creating array "
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print "."
  sleep(0.25)
  print " "
  for i in 0..(array_length - 1) 
    hash = {array_names[i] => array_prices[i]}
    data.push(hash)
  end
  puts " Done ✅"
  puts " "
  sleep(0.5)

  puts "Here are the cryptos and their prices:"
  puts " "
  sleep(0.5)
  puts data
  return data
end

def perform
  page = scrapper
  array_names = array_of_names(page)
  array_prices = array_of_prices(page)
  array_of_hash(array_names, array_prices)
end

perform