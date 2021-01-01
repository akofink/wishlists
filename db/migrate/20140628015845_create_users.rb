class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :prefix
      t.string :salt
      t.boolean :admin
      t.string :password

      t.timestamps
    end
  end
end
