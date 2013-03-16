class Comment < ActiveRecord::Base
  belongs_to :profile
  belongs_to :submission
  attr_accessible :comment, :inappropriate_flag, :usefulness
end
