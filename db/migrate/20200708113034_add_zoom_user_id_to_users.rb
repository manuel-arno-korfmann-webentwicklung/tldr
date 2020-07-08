class AddZoomUserIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :zoom_user_id, :strig
  end
end
