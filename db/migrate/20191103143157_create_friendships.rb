class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :friend_id
      t.string :state, default: "pending"
      t.datetime :friended_at

      t.timestamps
    end
  end
end
