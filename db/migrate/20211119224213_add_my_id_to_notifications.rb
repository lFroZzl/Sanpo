class AddMyIdToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :my_id, :integer
    add_index :notifications, :my_id
  end
end
