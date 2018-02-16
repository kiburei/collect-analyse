class TwitterUser < ApplicationRecord
  validates :hits, presence: true

  def self.to_csv
    attributes = %w{year hits}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |twitter_user|
        csv << attributes.map{ |attr| twitter_user.send(attr) }
      end
    end
  end
end
