class AddColumnsToUsersAndVideos < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :favorite_videos_count, :integer, default: 0
    add_column :videos, :favorites_count, :integer, default: 0
  end
end
