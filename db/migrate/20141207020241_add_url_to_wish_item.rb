class AddUrlToWishItem < ActiveRecord::Migration
  def change
    add_column :wish_items, :url, :string
  end
end
