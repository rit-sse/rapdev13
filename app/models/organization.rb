class Organization < ActiveRecord::Base
  has_and_belongs_to_many :profiles
  # attr_accessible :title, :body
end
