class Category < ApplicationRecord
  has_many :columns
  validates :name, presence: true, uniqueness: true, length: {minimum: 2, maximum: 10}
  validates :status, presence: true, inclusion: [0, 1]
end
