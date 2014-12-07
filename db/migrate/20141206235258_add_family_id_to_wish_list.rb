class AddFamilyIdToWishList < ActiveRecord::Migration
  def change
    add_column :wish_lists, :family_id, :integer
  end
end
