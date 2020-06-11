class User
  module VideoFavorite
    extend ActiveSupport::Concern

    included do
      action_store :favorite, :video, counter_cache: true, user_counter_cache: true
    end

    def has_favorite_by_videos(videos)
      return [] if videos.blank?
      return [] if self.favorite_videos_count == 0
      self.favorite_video_actions.where(target_id: videos.collect(&:id)).pluck(:target_id)
    end

    def favorites_count
      favorite_video_actions.count
    end
  end
end
