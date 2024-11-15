class CreateParkings < ActiveRecord::Migration[7.1]
  def change
    create_table :parkings do |t|
      t.string :parking_name
      t.integer :payment_destination_id

      t.timestamps
    end
  end
end
