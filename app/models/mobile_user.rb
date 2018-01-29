class MobileUser < ApplicationRecord
  validates :hits, presence: true
end
