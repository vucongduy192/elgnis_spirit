class CreateImageStates < ActiveRecord::Migration[5.2]
  def change
    create_table :image_states do |t|
      t.integer :user_id
      t.integer :friend_id
      t.integer :image_id
      t.string :state
      t.datetime :created_at

      t.timestamps
    end
  end
end
