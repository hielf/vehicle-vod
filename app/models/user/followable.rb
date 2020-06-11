class User
  module Followable
    extend ActiveSupport::Concern
    included do
      action_store :follow, :user, counter_cache: 'followers_count', user_counter_cache: 'following_count'
    end

    def follow(user)
      return [false, '用户不存在'] unless user
      return [false, '对象不能是自己'] if user.id == self.id
      self.create_action(:follow, target: user)
    end

    def cancel_follow(user)
      return [false, '用户不存在'] unless user
      return [false, '对象不能是自己'] if user.id == self.id
      self.destroy_action(:follow, target: user)
    end

    # 关注用户的所有id

    def follow_user_ids
      follow_user_actions.pluck(:target_id)
    end
  end
end
