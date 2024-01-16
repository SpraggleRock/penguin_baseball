require './rails_helper'

RSpec.describe Game, type: :model do
	context 'the Game class' do
	  it 'implements ##new' do
	  	expect(Game).to respond_to(:new)
	  end
	end
	context 'an instance of Game' do
		before(:all) do
			@game = Game.new
		end

		it 'can #simulate a game' do
			expect(@game.simulate).to be_instance_of(String)
		end
	end
end