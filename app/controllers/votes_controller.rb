class VotesController < ApplicationController
	before_action :require_user, only: [:vote]
	def new
		@vote = Vote.new
	end

	def vote
		@vote = Vote.create(choice_id: params[:choice_id], voter: current_user, vote: params[:vote], question_id: params[:question_id])
		if @vote.valid?
			flash[:success] = "Success"
			redirect_to :back
		else
			flash[:warning] = "Error"
			redirect_to :back
		end
	end

end