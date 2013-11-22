class Magikarp

	attr_accessor :name, :abilities, :level, :exp, :hp, :ap, :defense, :speed
	attr_reader :type, :catch_rate, :pokedex, :gender, :habitat

	LEARNSET = {
		"Splash" => 0,
		"Tackle" => 15,
		"Flail" => 30
	}

	def initialize(name, level=1, exp=40)
		@name = name
		@type = ["Water"]
		@abilities = ["Splash"]
		@catch_rate = 0.333
		@level = level
		@exp = exp
		@pokedex = "A Magikarp living for many years can leap a mountain using Splash. The move remains useless, though."
		@hp = 20
		@ap = 10
		@defense = 55
		@speed = 80
		@gender = rand > 0.5 ? "female":"male"
		@habitat = "water"
	end

end