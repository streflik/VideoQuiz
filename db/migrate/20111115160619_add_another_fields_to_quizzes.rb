class AddAnotherFieldsToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :company_name, :string 
    add_column :quizzes, :company_email, :string 
  end
end
