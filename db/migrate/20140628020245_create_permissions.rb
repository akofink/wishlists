class CreatePermissions < ActiveRecord::Migration[4.2]
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :permission_type_id

      t.timestamps
    end
  end
end
