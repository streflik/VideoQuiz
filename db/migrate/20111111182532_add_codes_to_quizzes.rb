class AddCodesToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :codes, :text
  end
end
