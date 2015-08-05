class Comment < ActiveRecord::Base
  belongs_to :print
  belongs_to :user
end