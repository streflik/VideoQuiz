class CtreateTableQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :text
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.integer :correct
      t.timestamps
    end
  end
end
