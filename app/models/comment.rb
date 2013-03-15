class Comment < ActiveRecord::Base
  belongs_to :profile
  attr_accessible :comment, :inappropriate_flag, :usefulness
end
