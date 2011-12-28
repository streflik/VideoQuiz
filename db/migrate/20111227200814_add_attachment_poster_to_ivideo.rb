class AddAttachmentPosterToIvideo < ActiveRecord::Migration
  def self.up
    add_column :quizzes, :poster_file_name, :string
    add_column :quizzes, :poster_content_type, :string
    add_column :quizzes, :poster_file_size, :integer
    add_column :quizzes, :poster_updated_at, :datetime
  end

  def self.down
    remove_column :quizzes, :poster_file_name
    remove_column :quizzes, :poster_content_type
    remove_column :quizzes, :poster_file_size
    remove_column :quizzes, :poster_updated_at
  end
end
