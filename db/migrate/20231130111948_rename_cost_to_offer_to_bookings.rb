class RenameCostToOfferToBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :cost, :offer
  end
end
