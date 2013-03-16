class Language < ActiveRecord::Base
  has_many :code
  attr_accessible :ace_syntax, :name, :pygments_syntax
end
