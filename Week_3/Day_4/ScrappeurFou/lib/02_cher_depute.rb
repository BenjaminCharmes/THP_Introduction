# 02_cher_depute.rb

require 'nokogiri'

require 'open-uri'

def scrapper
  return page = Nokogiri::HTML(URI.open("https://www2.assemblee-nationale.fr/deputes/liste/alphabetique")) 
end 

def get_depute_url(page)
  scrap_all_depute_url = page.xpath('//*[@id="deputes-list"]/*/*/*/a')

  all_depute_href = []
  scrap_all_depute_url.each do |depute_url_href|
    all_depute_href.push(depute_url_href['href'])
  end 
  all_depute_url = all_depute_href.map {|href| "https://www2.assemblee-nationale.fr" + href}
  return all_depute_url
end 

def get_depute_mail(all_depute_url)
  all_depute_mail = []
  all_depute_url.each do |url|
    depute_page = Nokogiri::HTML(URI.open("#{url}"))
    scrap_depute_mail = depute_page.xpath('//*[@id="haut-contenu-page"]/article/div[3]/div/dl/dd[4]/ul/li[2]/a')
    all_depute_mail.push(scrap_depute_mail.text)
  end 
  return all_depute_mail
end 

def get_array_of_name(all_depute_mail)
  array_full_name = []
  all_depute_name = []
  all_depute_name = all_depute_mail.map {|word| word.gsub('@assemblee-nationale.fr', '')}.map{|word| word.gsub(".", " ")}.join(" ").split
  array_full_name = array_full_name.push(all_depute_name)
  return array_full_name
end

def get_array_first_name(array_full_name)
  array_first_name = []
  array_first_name = array_full_name.values_at(* array_full_name.each_index.select {|i| i.even?})
  return array_first_name
end 

def get_array_last_name(array_full_name)
  array_last_name = []
  array_last_name = array_full_name.values_at(* array_full_name.each_index.select {|i| i.odd?})
  return array_last_name
end 

def array_of_hash(all_depute_mail, array_first_name, array_last_name)
  data = []

  array_length = all_depute_mail.length
  
  first_name = Array.new(array_length, "First_name")
  last_name = Array.new(array_length, "Last_name")

  for i in 0..(array_length - 1) 
    hash = {first_name[i] => array_first_name[i], last_name[i] => array_last_name[i], "email"[i] => all_depute_mail[i]}
    data.push(hash)
  end

  puts data
  return data
end

def perform
  all_depute_url = get_depute_url(scrapper)
  all_depute_mail = get_depute_mail(all_depute_url)
  array_full_name = get_array_of_name(all_depute_mail)
  array_first_name = get_array_first_name(array_full_name)
  array_last_name = get_array_last_name(array_full_name)
  array_of_hash(all_depute_mail, array_first_name, array_last_name)
end 

perform