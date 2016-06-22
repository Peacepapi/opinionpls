class AddQuesPicColumnsToQuestions < ActiveRecord::Migration
  def up
    add_attachment :questions, :ques_pic
  end

  def down
    remove_attachment :questions, :ques_pic
  end
end