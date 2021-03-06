class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :role

  has_many :quizes

  validates :first_name, :last_name, :email, :presence => true



  def name
    first_name + " " + last_name
  end

  def admin?
    role == "ADMIN"
  end

  def user?
    role == "USER"
  end

end
