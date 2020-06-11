class User
  module Blockable
    extend ActiveSupport::Concern

    included do
      action_store :block, :user
    end

    def block_user_ids
      block_user_actions.pluck(:target_id)
    end

  end
end