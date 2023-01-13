# 03_word_counter.rb


def check_matching_and_calculate_occurence_of_a_word_in_string(string, word)
  string = string.upcase
  array_matched_word = string.scan(word.upcase)
  hash_matched_word_and_occurence = {word => array_matched_word.length}
  return hash_matched_word_and_occurence
end

def find_matching_words_and_occurences_in_string(string, array_of_words_to_check)
  array_of_hashes_of_words_and_occurences = array_of_words_to_check.map { |word| word = check_matching_and_calculate_occurence_of_a_word_in_string(string, word) }
  return array_of_hashes_of_words_and_occurences
end

def transform_array_of_hashes_into_hash(array_of_hashes)
  hash = array_of_hashes.inject(:merge)
  hash = hash.select { |k, v| v > 0 }
  hash = hash.sort.to_h
  return hash
end

def word_counter (string, array_of_words_to_check)
  p transform_array_of_hashes_into_hash(find_matching_words_and_occurences_in_string(string, array_of_words_to_check))
end


dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
s = "Howdy partner, sit down! How's it going?"
#word_counter(s, dictionnary)

#find the absolute path of the file, in order to run this program fron another folder, in spec for example
local_dir =File.expand_path('../', __FILE__) 
file = "#{local_dir}/shakespeare.txt"
shakespeare_book = File.readlines(file).join(" ")
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
word_counter(shakespeare_book, dictionnary)

#file = 'cursed_words.txt'
#array_cursed_words = File.readlines(file)
#array_cursed_words = array_cursed_words.map { |i| i.chomp}
#word_counter(shakespeare_book, array_cursed_words)