class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table(:quizzes) do |t|
      t.integer :customer_id
      t.string :name
      t.string :yt_id
      t.string :question
      t.string :reward
      t.datetime :reward_exp
      t.string :fb_page
      t.string :landing_page
      t.timestamps
    end
  end

  def self.down
    drop_table :quizzes
  end
end
