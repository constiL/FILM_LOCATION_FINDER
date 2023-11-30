class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :start_date, :end_date, presence: true
  validates :cost, presence: true, numericality: { only_integer: true }
end
