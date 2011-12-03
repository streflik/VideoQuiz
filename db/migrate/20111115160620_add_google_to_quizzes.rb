class AddGoogleToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :google_anal, :string  
  end
end
