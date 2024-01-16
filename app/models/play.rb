class Play < ApplicationRecord

	belongs_to :penguin

	#callback

	# state machine?
	# computes its own outcome?

	private

	def compute_outcome
		#this maybe should be a service object
	end

end
