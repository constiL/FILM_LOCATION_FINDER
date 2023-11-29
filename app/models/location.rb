class Location < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :image_url, presence: true, uniqueness: true
  validates :name, length: { minimum: 5 }
  validates :description, presence: true
  validates :style, inclusion: { in: %w[modern minimalistic rustic chic mediterranean] }
  validates :rooms, numericality: { greater_than_or_equal_to: 1 }
  validates :city, presence: true
end
