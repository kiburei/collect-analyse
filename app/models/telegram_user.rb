class TelegramUser < ApplicationRecord
  validates :hits, presence: true

  def self.to_csv
    attributes = %w{year hits}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |telegram_user|
        csv << attributes.map{ |attr| telegram_user.send(attr) }
      end
    end
  end
end
