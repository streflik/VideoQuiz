class AddAnsqwrsToQuestions < ActiveRecord::Migration
  def change
    #add_column :questions, :answer_4, :string
    add_column :questions, :answer_5, :string
    add_column :questions, :video5, :string
    add_column :questions, :answer_6, :string
    add_column :questions, :video6, :string
    add_column :questions, :answer_7, :string
    add_column :questions, :video7, :string
    add_column :questions, :answer_8, :string
    add_column :questions, :video8, :string
  end
end
