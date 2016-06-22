class Vote < ActiveRecord::Base
	belongs_to :voter, class_name: 'User'
	belongs_to :choice
	belongs_to :question

	validates_presence_of :voter_id, :choice_id, :question_id
	validates_uniqueness_of :voter, scope: :choice, scope: :question_id

	def one_vote_per_question
  		if Vote.where("voter_id = ? AND question_id = ?", self.voter.id, self.choice.question.id).exists?
   			errors.add(:vote, "You have already voted on this question")
  		end
	end
end
