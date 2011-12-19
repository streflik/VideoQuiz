#encoding: utf-8
class Win < ActiveRecord::Base

  belongs_to :quiz, :counter_cache => true

  attr_accessible :quiz_id, :email, :code

  validates :email, :presence => true, :format => /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/
  validates :code, :presence => true
  validates_uniqueness_of :email, :scope => [:quiz_id]

end
