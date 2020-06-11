class User
  module Likeable
    extend ActiveSupport::Concern

    included do
      # Action for Video
      action_store :like, :video, counter_cache: true, user_counter_cache: true
    end

    # 赞
    def like(likeable)
      return false if likeable.blank?
      # return false if likeable.user_id == self.id
      self.create_action(:like, target: likeable)
    end

    # 取消赞
    def unlike(likeable)
      return false if likeable.blank?
      self.destroy_action(:like, target: likeable)
    end

    # 是否赞过
    def liked?(likeable)
      self.find_action(:like, target: likeable).present?
    end


    def has_liked_by_videos(videos)
      return [] if videos.blank?
      return [] if self.like_videos_count == 0
      self.like_video_actions.where(target_id: videos.collect(&:id)).pluck(:target_id)
    end
  end
end
