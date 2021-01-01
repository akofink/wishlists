class CreateWishItems < ActiveRecord::Migration[4.2]
  def change
    create_table :wish_items do |t|
      t.integer :wish_list_id
      t.integer :purchased_by_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
