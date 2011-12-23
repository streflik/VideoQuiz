class AddMoviesTypeToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :movies_type, :string
  end
end
