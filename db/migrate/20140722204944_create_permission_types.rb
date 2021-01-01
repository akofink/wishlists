class CreatePermissionTypes < ActiveRecord::Migration[4.2]
  def change
    create_table :permission_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
