class WishList < ActiveRecord::Base
  belongs_to :user
  belongs_to :family

  has_many :wish_items
end
