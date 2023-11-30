class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  validates :dates, presence: true
  validates :offer, presence: true, numericality: { only_integer: true }
end
