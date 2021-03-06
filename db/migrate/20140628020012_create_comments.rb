class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :model_id
      t.string :model_type
      t.boolean :edited

      t.timestamps
    end
  end
end
