class WishList < ActiveRecord::Base
  belongs_to :user
  belongs_to :family

  has_many :wish_items

  scope :by_updated_at, -> { order :updated_at }
  scope :by_title, -> { order :updated_at }
end
