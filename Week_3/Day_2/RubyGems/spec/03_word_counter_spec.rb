# 03_word_counter_spec.rb

require_relative '../lib/03_word_counter'

describe "word_counter" do

  it "return number of occurrences of each word of the dictionary in the corpus" do
    expect(word_counter("below")).to eq({"below"=>1, "low"=>1})
    expect(word_counter("Howdy partner, sit down! How's it going?")).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end

end 

