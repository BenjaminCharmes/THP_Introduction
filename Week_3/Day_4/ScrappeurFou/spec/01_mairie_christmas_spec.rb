# 01_mairie_christmas_spec.rb

require_relative '../lib/01_mairie_christmas'

describe "Mairie Christmas !" do

  it "return an hash of all townhall with their mail" do
    expect(perform).to be_an(Array)
  end

  it "return the name of townhall" do  
    expect(get_townhall_name(get_townhall_url(scrapper))).to include ("ableiges")
    expect(get_townhall_name(get_townhall_url(scrapper))).to include ("avernes")
    expect(get_townhall_name(get_townhall_url(scrapper))).to include ("wy-dit-joli-village")
  end 

end