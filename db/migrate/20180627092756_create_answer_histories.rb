class CreateAnswerHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_histories do |t|
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
