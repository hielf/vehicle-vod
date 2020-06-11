class UserColumn < ApplicationRecord
  belongs_to :user
  belongs_to :column
  validates :column_id, presence: true, uniqueness: {scope: :user_id, message: '不能重复'}
  validates :user_id, presence: true
end
