class CreateParkingUsageHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :parking_usage_histories do |t|
      t.integer :year
      t.integer :month
      t.integer :parking_area_id
      t.integer :parking_user_id
      t.integer :amount

      t.timestamps
    end
  end
end
