class QuestionsController < ApplicationController
	before_action :set_question, only: [:show, :edit, :update, :destroy]
	before_action :require_same_user, only: [:edit, :update, :destroy]
	before_action :require_user, only: [:new]

	def index
		@categories = Category.all
		@questions = Question.order('created_at DESC').paginate(:page => params[:page], :per_page => 8)
	end

	def new
		@question = current_user.questions.build
		4.times{ @question.choices.build}
	end

	def create
		@question = current_user.questions.build(ques_params)
		if @question.save
			redirect_to @question
		else
			4.times{ @question.choices.build}
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @question.update(ques_params)
			redirect_to @question
		else
			render 'edit'
		end
	end

	def destroy
		@question.destroy
		if @question.destroyed?
			flash[:success] = "Successfully delete question"
			redirect_to questions_path	
		else
			flash[:error] = "Error"
			redirect_to questions_path
		end
	end

	private

		def ques_params
			params.require(:question).permit(:title, :category_id, :ques_pic, choices_attributes: [:id,:option, :_destroy])
		end

		def set_question
			@question = Question.find(params[:id])
		end

		def require_same_user
			if @question.user != current_user
				flash[:warning] = "You cannot do that."
				redirect_to root_path	
			end
		end
end
