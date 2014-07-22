class UpVote < ActiveRecord::Base
  belongs_to :comment
  belongs_to :recipe
end
