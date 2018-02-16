class LinkedinUser < ApplicationRecord
  validates :hits, presence: true

  def self.to_csv
    attributes = %w{year hits}

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |linkedin_user|
        csv << attributes.map{ |attr| linkedin_user.send(attr) }
      end
    end
  end

end
