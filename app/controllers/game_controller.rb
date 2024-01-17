class GameController < ApplicationController

	def index; end

	def new
		# should probably instantiate a new game and put simulating into a background process
		teams = Team.all
		game = Game.new(teams.first, teams.last)
		@game_simulation_text = game.simulate
	end

end
