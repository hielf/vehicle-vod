class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :video, counter_cache: true
  validates :user_id, :video_id, :body, presence: true
  validates :body, length: {maximum: 500, minimum: 2}, uniqueness: {scope: [:video_id, :user_id], message: '不能重复提交'}
end
