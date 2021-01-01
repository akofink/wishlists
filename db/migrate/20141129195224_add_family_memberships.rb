class AddFamilyMemberships < ActiveRecord::Migration[4.2]
  def change
    create_table :family_memberships do |t|
      t.integer :user_id
      t.integer :family_id
    end
  end
end
