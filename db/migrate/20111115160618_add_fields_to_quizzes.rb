class AddFieldsToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :reward_short, :string 
    add_column :quizzes, :custom_css, :text
  end
end
