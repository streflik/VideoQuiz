class Win < ActiveRecord::Base

  belongs_to :quiz

  attr_accessible :quiz_id, :customer_id, :email

end
