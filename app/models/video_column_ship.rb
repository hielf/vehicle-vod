class VideoColumnShip < ApplicationRecord
  belongs_to :video
  belongs_to :column, counter_cache: :videos_count
  validates :column_id, presence: true, uniqueness: {scope: :video_id, message: '不能重复'}
  validates :video_id, presence: true
end
