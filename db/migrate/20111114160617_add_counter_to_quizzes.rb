class AddCounterToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :wins_count, :integer, :default => 0
  end
end
