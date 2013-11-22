class Growlithe

	attr_accessor :name, :abilities, :level, :exp, :hp, :ap, :defense, :speed
	attr_reader :type, :catch_rate, :pokedex, :gender, :habitat

	LEARNSET = {
		"Bite" => 0,
		"Roar" => 0,
		"Ember" => 6,
		"Leer" => 8,
		"Odor Sleuth" => 10,
		"Helping Hand" => 12,
		"Flame Wheel" => 17,
		"Reversal" => 19,
		"Fire Fang" => 21,
		"Take Down" => 23,
		"Flame Burst" => 28,
		"Agility" => 30,
		"Retaliate" => 32,
		"Flamethrower" => 34,
		"Crunch" => 39,
		"Heat Wave" => 41,
		"Outrage" => 43,
		"Flare Blitz" => 45
	}

	def initialize(name, level=1, exp=70)
		@name = name
		@type = ["Fire"]
		@abilities = ["Bite", "Roar"]
		@catch_rate = 0.248
		@level = level
		@exp = exp
		@pokedex = "Extremely loyal to its Trainer, it will bark at those who approach the Trainer unexpectedly and run them out of town."
		@hp = 55
		@ap = 70
		@defense = 45
		@speed = 60
		@gender = rand > 0.75 ? "female":"male"
		@habitat = "grassy plains"
	end

end