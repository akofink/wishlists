class AddOwnerIdToFamily < ActiveRecord::Migration[4.2]
  def change
    add_column :families, :owner_id, :integer
  end
end
