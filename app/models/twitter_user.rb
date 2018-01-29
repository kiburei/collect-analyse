class TwitterUser < ApplicationRecord
  validates :hits, presence: true
end
