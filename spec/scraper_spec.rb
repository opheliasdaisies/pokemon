require "../lib/scraper.rb"

describe Scraper, "#get_species" do
	it "should look at a pokemon page on bulbapedia and return the name" do
		expect(Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Girafarig").get_species).to eq("Girafarig")
	end
end