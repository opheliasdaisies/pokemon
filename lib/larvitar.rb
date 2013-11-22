class Larvitar

	attr_accessor :name, :abilities, :level, :exp, :hp, :ap, :defense, :speed
	attr_reader :type, :catch_rate, :pokedex, :gender, :habitat

	LEARNSET = {
		"Bite" => 0,
		"Leer" => 0,
		"Sandstorm" => 5,
		"Screech" => 10,
		"Chip Away" => 14,
		"Rock Slide" => 19,
		"Scary Face" => 23,
		"Thrash" => 28,
		"Dark Pulse" => 32,
		"Payback" => 37,
		"Crunch" => 41,
		"Earthquake" => 46,
		"Stone Edge" => 50,
		"Hyper Beam" => 55
	}

	def initialize(name, level=1, exp=60)
		@name = name
		@type = ["Rock", "Ground"]
		@abilities = ["Bite", "Leer"]
		@catch_rate = 0.059
		@level = level
		@exp = exp
		@pokedex = "Born deep underground, it comes aboveground and becomes a pupa once it has finished eating the surrounding soil."
		@hp = 50
		@ap = 64
		@defense = 50
		@speed = 41
		@gender = rand > 0.5 ? "female":"male"
		@habitat = "mountains"
	end

end