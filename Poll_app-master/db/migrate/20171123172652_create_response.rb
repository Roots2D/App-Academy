class CreateResponse < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :voter_id, null: false
      t.integer :answer_choice_id, null: false
      t.timestamps
    end
    add_index :responses, :voter_id 
    add_index :responses, :answer_choice_id
  end
end
