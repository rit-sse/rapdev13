class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :project
  has_and_belongs_to_many :organization
  has_and_belongs_to_many :group
  attr_accessible :about_me, :github, :name
end
