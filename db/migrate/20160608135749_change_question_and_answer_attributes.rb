class ChangeQuestionAndAnswerAttributes < ActiveRecord::Migration
  def change
  	rename_column :questions, :question, :title
  	rename_column :choices, :choice, :option
  end
end
