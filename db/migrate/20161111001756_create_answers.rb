class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :attempt
      t.references :question
      t.text :answer_text

      t.timestamps
    end
    add_index :answers, :attempt_id
    add_index :answers, :question_id
  end
end
