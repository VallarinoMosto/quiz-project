class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :correct_answer
      t.belongs_to :subject
      t.timestamps
    end
  end
end
