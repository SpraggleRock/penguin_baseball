class Inning
	OUTS_PER_INNING = 3 #this could be configurable by game maybe?

	attr_accessor :number_of_outs, :batter_index

	def initialize(fielding:, batting:, batter_index: 0)
		@fielding_team = fielding
		@batting_team = batting
		@number_of_outs = 0
		@batter_index = batter_index
		assign_fielders
	end

	def assign_fielders
		# TODO: install rubocop and clean this up
		@pitcher,
		@catcher,
		@first_base,
		@second_base,
		@shortstop,
		@third_base,
		@left_field,
		@center_field,
		@right_field = @fielding_team.penguins
	end

	def batting_roster
		@batting_team.penguins
	end

	def batter
		batting_roster[batter_index]
	end

	def simulate
		at_bat = AtBat.new(pitcher: @pitcher, catcher: @catcher, batter: batter)
		at_bat.simulate
	end


end