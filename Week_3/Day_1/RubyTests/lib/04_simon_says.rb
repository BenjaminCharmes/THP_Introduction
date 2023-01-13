# 04_simon_says.rb

def echo(text)
  return text
end 

def shout(text)
  return text.upcase
end 

def repeat(text, n = 2)
    return Array.new(n, text).join(" ")
end 

def start_of_word(text, n)
  return text[0..n-1]
end

def first_word(text)
  return text.split.first
end 

def titleize(words)
  little_words = %w[on the and]
  final_text = words.split.map.with_index do |word, i|
    if i != 0 && little_words.include?(word)
      word.downcase
    else
      word.capitalize
    end 
  end
  final_text.join(" ") 
end 
