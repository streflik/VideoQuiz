class AddInstructionToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :instruction, :string
  end
end
