class Project < ActiveRecord::Base
  belongs_to :profile
  has_many :submission, order: :position
  attr_accessible :is_private, :permalink
end
