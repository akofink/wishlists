class AddUrlToWishItem < ActiveRecord::Migration[4.2]
  def change
    add_column :wish_items, :url, :string
  end
end
