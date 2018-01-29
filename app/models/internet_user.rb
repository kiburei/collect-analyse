class InternetUser < ApplicationRecord
  validates :hits, presence: true

  def self.to_csv
    CSV.generate do |csv|
      colum_names = %w(year hits)
      csv << colum_names
      all.each do |internet_user|
        csv << internet_user.attributes.values_at(colum_names)
      end
    end
  end

end
