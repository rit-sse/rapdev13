class Code < ActiveRecord::Base
  belongs_to :language
  belongs_to :submission
  attr_accessible :entry, :expected_output
  validates :entry, presence: true
end
