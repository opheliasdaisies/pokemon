require "./lib/pokemon"
require "./lib/scraper"

pokemon_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_index_number_(Generation_V)")

names = pokemon_scraper.get_species

def make_pokemon(names)
	names.each do |name|
		Pokemon.new(name)
	end
end

make_pokemon(names)