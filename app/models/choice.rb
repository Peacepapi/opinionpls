class Choice < ActiveRecord::Base
	belongs_to :question
	has_many :votes, dependent: :destroy

	def votes_count
		self.votes.where(vote: true).size
	end
end
