class Group < ActiveRecord::Base
  belongs_to :profile
  has_many :profiles
  attr_accessible :is_private
end
