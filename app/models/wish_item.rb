class WishItem < ActiveRecord::Base
  belongs_to :wish_list
  delegate :user, to: :wish_list
  belongs_to :purchased_by, class_name: "User"

  scope :by_name, ->{order :name}
end
