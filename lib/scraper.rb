require "open-uri"
require "nokogiri"

class Scraper

	attr_reader :html, :new_html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	def child_url
		html.search("tr td:nth-child(4) a").map do |anchor|
			anchor['href']
		end
	end

	def get_species
		all_species = []
		child_url.each do |element|
			new_html = Nokogiri::HTML(open("http://bulbapedia.bulbagarden.net#{element}"))
			species = new_html.search("#firstHeading span").text.split(" (P")
			puts species[0]
			all_species << species[0]
		end
		all_species
	end

end