class AddFriendIdToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :friend_id, :integer
    add_index :friends, :friend_id
  end
end
