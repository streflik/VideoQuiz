class Quiz < ActiveRecord::Base

  belongs_to :customer
  has_many :answers
  has_many :wins

  attr_accessible :customer_id, :name, :yt_id, :question, :reward, :reward_exp, :fb_page, :landing_page, :coupons_left

  validates :customer_id, :name, :yt_id, :question, :reward, :reward_exp, :fb_page, :landing_page, :coupons_left, :presence => true

end
