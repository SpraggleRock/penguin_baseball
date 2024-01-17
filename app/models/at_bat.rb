class AtBat

	NUMBER_OF_STRIKES = 3
	NUMBER_OF_BALLS = 4

	attr_accessor :strikes, :balls, :hit, :simulation_text

	def initialize(pitcher:, catcher:, batter:)
		# TODO: extract field state into an object that can be passed around
		@pitcher = pitcher
		@catcher = catcher
		@batter = batter
		@strikes = 0
		@balls = 0
		@hit = 0
		@simulation_text = ''
	end

	def simulate
		until at_bat_ended?
			throw_a_pitch
		end
		simulation_text
	end

	def at_bat_ended?
		strikes == 3 or hit == 1 or balls == 4
	end

	def throw_a_pitch
		if pitch_is_a_strike?
			@simulation_text += "#{@pitcher.name} throws a strike! \b"
			swing(true)
		else
			swing(false)
		end
	end

	def pitch_is_a_strike?
		[true, false].sample
	end

	def swing(modifier)
		return batter_hits if batter_hits_the_ball?(modifier)

		@strikes += 1
		batter_misses
	end

	def batter_hits_the_ball?(modifier)
		[true,false,modifier].sample
	end

	def batter_hits
		# TODO: create a simulator parent class that has text-tracking methods
		# for instance: add_simulation_text("text string")
		# it should format output consistently
		@hit = 1
		@simulation_text += "#{@batter.name} gets a hit!" 
	end

	def batter_misses
		# TODO find a gem to convert numbers to "one" "two" "three"
		@simulation_text += "#{@batter.name} misses. Strike #{@strikes}" 
	end

end