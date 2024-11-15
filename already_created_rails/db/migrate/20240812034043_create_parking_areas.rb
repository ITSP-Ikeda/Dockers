class CreateParkingAreas < ActiveRecord::Migration[7.1]
  def change
    create_table :parking_areas do |t|
      t.string :parking_area_name
      t.integer :parking_id

      t.timestamps
    end
  end
end
