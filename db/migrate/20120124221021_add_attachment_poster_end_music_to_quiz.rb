class AddAttachmentPosterEndMusicToQuiz < ActiveRecord::Migration
  def self.up
    add_column :quizzes, :poster_end_file_name, :string
    add_column :quizzes, :poster_end_content_type, :string
    add_column :quizzes, :poster_end_file_size, :integer
    add_column :quizzes, :poster_end_updated_at, :datetime
    add_column :quizzes, :music_file_name, :string
    add_column :quizzes, :music_content_type, :string
    add_column :quizzes, :music_file_size, :integer
    add_column :quizzes, :music_updated_at, :datetime
  end

  def self.down
    remove_column :quizzes, :poster_end_file_name
    remove_column :quizzes, :poster_end_content_type
    remove_column :quizzes, :poster_end_content_type
    remove_column :quizzes, :poster_end_file_size
    remove_column :quizzes, :poster_end_updated_at
    remove_column :quizzes, :music_file_name
    remove_column :quizzes, :music_content_type
    remove_column :quizzes, :music_file_size
    remove_column :quizzes, :music_updated_at
  end
end
