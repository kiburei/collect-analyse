class MobileUser < ApplicationRecord
  validates :hits, presence: true

  def self.to_csv
    attributes = %w{year hits}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |mobile_user|
        csv << attributes.map{ |attr| mobile_user.send(attr) }
      end
    end
  end
end
