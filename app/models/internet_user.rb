class InternetUser < ApplicationRecord
  has_many :sources
  validates :hits, presence: true

  def self.to_csv
    attributes = %w{year hits}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |internet_user|
        csv << attributes.map{ |attr| internet_user.send(attr) }
      end
    end
  end

end
