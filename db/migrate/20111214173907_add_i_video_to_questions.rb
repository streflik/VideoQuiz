class AddIVideoToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :video1, :string
    add_column :questions, :video2, :string
    add_column :questions, :video3, :string
    add_column :questions, :video4, :string
  end
end
