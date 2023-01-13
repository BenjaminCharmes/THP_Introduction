# 01_cryptofolies_spec.rb

require_relative '../lib/01_caesar_cipher'

describe "caesar_cipher" do

  it "return the encrypted string" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Hello, World!", 1)).to eq("Ifmmp, Xpsme!")
  end

end 

