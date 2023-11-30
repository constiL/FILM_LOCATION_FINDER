class AddStartEndDateToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
    remove_column :bookings, :dates
  end
end
