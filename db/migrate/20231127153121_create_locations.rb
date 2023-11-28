class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.integer :rooms
      t.references :user, null: false, foreign_key: true
      t.string :style
      t.boolean :outdoor_space

      t.timestamps
    end
  end
end
