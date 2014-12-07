class AddOwnerIdToFamily < ActiveRecord::Migration
  def change
    add_column :families, :owner_id, :integer
  end
end
