class CreateUpVotes < ActiveRecord::Migration[4.2]
  def change
    create_table :up_votes do |t|
      t.integer :user_id
      t.integer :model_id
      t.string :model_type

      t.timestamps
    end
  end
end
