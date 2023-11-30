class AddCostPerDayToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :cost_per_day, :integer
  end
end
