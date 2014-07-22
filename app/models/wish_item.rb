class WishItem < ActiveRecord::Base
  belongs_to :wish_list
  delegate :user, to: :wish_list
end
