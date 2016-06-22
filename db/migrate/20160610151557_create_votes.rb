class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.integer :choice_id
      t.boolean :vote
      t.boolean :voted
      t.timestamps null: false
    end
  end
end
