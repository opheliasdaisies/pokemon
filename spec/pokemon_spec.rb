require "../lib/pokemon"

describe Pokemon, "#name" do
	it "should return the pokemon's name" do
		expect(Pokemon.new("Vulpix").name).to eq("Vulpix")
	end
end

describe Pokemon, "#say_name" do
	it "should return the Pokemon's name" do
		expect(Pokemon.new("Ditto").say_name).to eq("Ditto")
	end
end