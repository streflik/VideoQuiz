class AddiVideoToQuizzes < ActiveRecord::Migration
def change
  add_column :quizzes, :ivideo, :boolean
end
end
