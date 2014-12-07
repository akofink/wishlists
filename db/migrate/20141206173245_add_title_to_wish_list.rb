class AddTitleToWishList < ActiveRecord::Migration
  def change
    add_column :wish_lists, :title, :string
  end
end
