class CreatePermissionTypes < ActiveRecord::Migration
  def change
    create_table :permission_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
