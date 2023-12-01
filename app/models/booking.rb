class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :start_date, :end_date, presence: true
  validates :offer, presence: true, numericality: { only_integer: true }
end
