class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :abbr, allow_blank: true, format: {with: /\A[a-zA-Z]+\Z/i, message: '只允许字母'}
end
