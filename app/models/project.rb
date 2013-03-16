class Project < ActiveRecord::Base
  belongs_to :profile
  has_many :submissions, order: :position
  attr_accessible :is_private, :permalink
  validates :permalink,
          format: { with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix, :message => "must be a valid URL." }
  validates :is_private, presence: true
end
