class LastActivity < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true, uniqueness: true
  validates :last_activity_at, presence: true
end
