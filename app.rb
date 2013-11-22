require "./lib/pokemon"
require "./lib/scraper"

pokemon_scraper = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Girafarig")

name = pokemon_scraper.get_species

def make_pokemon(name)
	Pokemon.new(name)
end