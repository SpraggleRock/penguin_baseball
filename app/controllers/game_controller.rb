class GameController < ApplicationController

	def index; end

	def new
		# should probably instantiate a new game and put simulating into a background process
		game = Game.new
		@game_simulation_text = game.simulate
	end

end
