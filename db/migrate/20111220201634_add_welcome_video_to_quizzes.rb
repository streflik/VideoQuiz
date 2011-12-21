class AddWelcomeVideoToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :welcome_id1, :string
    add_column :quizzes, :welcome_id2, :string
    add_column :quizzes, :end_id1, :string
    add_column :quizzes, :end_id2, :string
  end
end
