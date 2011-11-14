class ChangeQuizzess < ActiveRecord::Migration
  def change
    rename_column :quizzes, :customer_id, :user_id
    remove_column :quizzes, :question

  end
end
