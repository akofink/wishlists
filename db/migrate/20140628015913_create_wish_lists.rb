class CreateWishLists < ActiveRecord::Migration[4.2]
  def change
    create_table :wish_lists do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
