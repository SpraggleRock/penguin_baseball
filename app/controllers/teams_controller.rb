class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		team = Team.find(params[:id])
		@penguins = team.penguins
	end
end
