class CreateReponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :respondent_id, null: false
      t.integer :answer_choice_id, null: false
      t.timestamps
    end
    
    #add_index :responses, [:respondent_id, :answer_choice_id], unique: true
  end
end
