class Family < ActiveRecord::Base
  has_many :users
  has_many :wish_lists
end
