class AddColumnsToVideosAndUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :video_src, :string
    add_column :videos, :video_cover, :string
    add_column :videos, :video_duration, :integer
    add_column :videos, :stars_count, :integer, default: 0
    remove_column :videos, :favors_count
    add_column :users, :star_videos_count, :integer, default: 0
    add_column :users, :followers_count, :integer, default: 0
    add_column :users, :following_count, :integer, default: 0
  end
end
