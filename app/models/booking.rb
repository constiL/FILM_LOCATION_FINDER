class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :dates, presence: true
  validates :cost, presence: true, numericality: { only_integer: true }
end
