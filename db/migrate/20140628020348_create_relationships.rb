class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.integer :user1_id
      t.integer :user2_id
      t.string :user1_label
      t.string :user2_label

      t.timestamps
    end
  end
end
