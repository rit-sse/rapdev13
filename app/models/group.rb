class Group < ActiveRecord::Base
  belongs_to :profile
  has_many :profile
  attr_accessible :is_private
end
