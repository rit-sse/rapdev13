class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :groups
  attr_accessible :about_me, :github, :name
end
