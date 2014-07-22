class WishItem < ActiveRecord::Base
  belongs_to :user, through: :wish_list
  belongs_to :wish_list
end
