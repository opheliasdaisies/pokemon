require "../lib/scraper"

describe Scraper, "#get_species" do
	it "should look at a pokemon page on bulbapedia and return the name" do
		expect(Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Girafarig").get_species).to eq("Girafarig")
	end
end

describe Scraper, "#html" do
	it "should return an HTML document" do
		expect(Scraper.new("http://bulbapedia.bulbgarden.net").html).to be_a_kind_of(Document)
	end	
end


