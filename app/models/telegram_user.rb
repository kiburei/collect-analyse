class TelegramUser < ApplicationRecord
  validates :hits, presence: true
end
