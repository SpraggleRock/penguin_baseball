class Game

	NUMBER_OF_INNINGS = 1 #9
	OUTS_PER_INNING = 3

	def initialize(team1, team2)
		@hometeam = team1
		@awayteam = team2
	end

	def simulate
		@inning = Inning.new(fielding: @hometeam, batting: @awayteam)
		@inning.simulate
	end

end