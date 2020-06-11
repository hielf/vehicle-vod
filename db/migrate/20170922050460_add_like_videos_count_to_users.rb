class AddLikeVideosCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :like_videos_count, :integer, default: 0
  end
end
