require "../app"

describe "#make_pokemon" do
	it "should create a pokemon with a species name" do
		expect(make_pokemon("Eevee")).to be_a_kind_of(String)
	end
end