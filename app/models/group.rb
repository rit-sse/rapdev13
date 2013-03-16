class Group < ActiveRecord::Base
  belongs_to :profile
  has_many :profiles
  attr_accessible :is_private
  validates :is_private, presence: true
end
