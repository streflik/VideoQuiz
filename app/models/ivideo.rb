#encoding: utf-8
class Ivideo < Quiz
  default_scope where(:ivideo => true)

  has_attached_file :poster,  :storage => :s3,
    :bucket => 'VideoQuiz',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
  has_attached_file :poster_end,  :storage => :s3,
    :bucket => 'VideoQuiz',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
  has_attached_file :music,  :storage => :s3,
    :bucket => 'VideoQuiz',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }


  def welcome_movie
    welcome_id1 || welcome_id2
  end

  def end_movie
    end_id1 || end_id2
  end

end
