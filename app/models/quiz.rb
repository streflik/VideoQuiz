class Quiz < ActiveRecord::Base

  belongs_to :user
  has_many :questions
  has_many :wins

  attr_accessible :user_id, :name, :yt_id, :questions_attributes, :reward, :reward_exp, :fb_page, :landing_page, :coupons_left

  validates :user_id, :name, :yt_id, :reward, :reward_exp, :fb_page, :landing_page,  :presence => true

  accepts_nested_attributes_for :questions
  serialize :codes, Array


  def generate_codes(quantity = 100)
    quantity.times{self.codes << SecureRandom.hex(3)}
    save
  end

end
