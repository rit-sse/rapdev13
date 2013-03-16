class Submission < ActiveRecord::Base
  has_one :code
  belongs_to :project
  acts_as_list scope: :project
  has_many :comment
  attr_accessible :rating
end
