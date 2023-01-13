# 00_dark_trader_spec.rb

require_relative '../lib/00_dark_trader'

describe "dark_crypto_work" do
  it "return an hash of all crypto with their prices" do
    expect(perform).to be_an(Array)
  end

  it "return the name of crypto" do
    expect(array_of_names(scrapper)).to include ("BTC")
    expect(array_of_names(scrapper)).to include ("ETH")
    expect(array_of_names(scrapper)).to include ("USDT")
    expect(array_of_names(scrapper)).to include ("BNB")
  end 

end