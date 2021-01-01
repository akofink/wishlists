class AddFamilyIdToWishList < ActiveRecord::Migration[4.2]
  def change
    add_column :wish_lists, :family_id, :integer
  end
end
