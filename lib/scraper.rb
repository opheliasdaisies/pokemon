require "open-uri"
require "nokogiri"

class Scraper

	attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	def get_species
		getting_species = html.search("#firstHeading span").text.split(" (P")
		species = getting_species[0].to_s
	end

end