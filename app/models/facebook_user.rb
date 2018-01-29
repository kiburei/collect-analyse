class FacebookUser < ApplicationRecord
  has_many :sources
  validates :hits, presence: true
end
