class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  validates :email, :password, :password_confirmation, presence: true
  validates :password, length: {minimum: 8, maximum: 25}
  validates :password_confirmation, length: {minimum: 8, maximum: 25}
end
