class AddMyIdToFriends < ActiveRecord::Migration[5.2]
  def change
    add_column :friends, :my_id, :integer
    add_index :friends, :my_id
  end
end
