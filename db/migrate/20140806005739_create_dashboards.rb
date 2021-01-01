class CreateDashboards < ActiveRecord::Migration[4.2]
  def change
    create_table :dashboards do |t|
      t.string :owner_type
      t.integer :owner_id

      t.timestamps
    end
  end
end
