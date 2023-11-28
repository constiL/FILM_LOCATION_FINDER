class AddImageUrlToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :image_url, :string
  end
end
