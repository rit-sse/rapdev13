class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  has_and_belongs_to_many :organizations
  has_and_belongs_to_many :groups
  attr_accessible :about_me, :github, :name
  validates :name, presence: true, length: {maximum: 70}
  validates :about_me, length: {maximum: 500}
end
