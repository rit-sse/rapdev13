class Language < ActiveRecord::Base
  has_many :codes
  attr_accessible :ace_syntax, :name, :pygments_syntax
end
