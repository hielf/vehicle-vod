class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :on_line, -> { where(status: 1) }
end
