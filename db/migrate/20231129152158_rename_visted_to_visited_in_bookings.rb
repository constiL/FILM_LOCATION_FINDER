class RenameVistedToVisitedInBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :visted, :visited
  end
end
