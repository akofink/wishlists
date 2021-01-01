class AddTitleToWishList < ActiveRecord::Migration[4.2]
  def change
    add_column :wish_lists, :title, :string
  end
end
