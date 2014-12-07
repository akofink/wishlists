class Family < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :family_memberships
  has_many :users, through: :family_memberships
  has_many :wish_lists

  accepts_nested_attributes_for :family_memberships

  scope :by_updated_at, ->{order :updated_at}

  def active_wish_lists
    WishList.where id: (wish_lists.map(&:user_id) & users.pluck(:id))
  end

  def user_count
    users.count
  end
end
