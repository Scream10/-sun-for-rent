class Terrace < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  include PgSearch::Model
  pg_search_scope :search_by_address,
    against: :address,
    using: {
      tsearch: { prefix: true }
    }
end
