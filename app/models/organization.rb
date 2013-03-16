class Organization < ActiveRecord::Base
  has_and_belongs_to_many :profile
  # attr_accessible :title, :body
end
