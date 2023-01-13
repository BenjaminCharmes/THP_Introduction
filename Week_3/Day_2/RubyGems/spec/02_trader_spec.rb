# 02_trader_spec.rb

require_relative '../lib/02_trader'

describe "day_trader" do

  it "return the best day to buy and the best day to sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq("il vaut mieux acheter le 2ème jour à 3$ et vendre le 5ème jour à 15$ pour générer un profit de 12$")
  end

end 