#encoding: utf-8
class Quiz < ActiveRecord::Base

  belongs_to :user
  has_many :questions
  has_many :wins

  #attr_accessible :user_id, :name, :yt_id, :questions_attributes, :reward, :reward_exp, :fb_page, :landing_page, :instruction, :reward_short, :custom_css, :codes, :company_name, :company_email, :google_anal
  #validates :user_id, :name, :yt_id, :reward, :reward_exp, :reward_short, :fb_page, :landing_page, :instruction, :company_name, :company_email, :presence => true

  accepts_nested_attributes_for :questions, :allow_destroy => true
  serialize :codes, Array

  def generate_codes(quantity = 100)
    quantity.times{self.codes << SecureRandom.hex(3)}
    save
  end

end
