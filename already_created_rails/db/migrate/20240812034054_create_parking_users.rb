class CreateParkingUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :parking_users do |t|
      t.string :parking_user_name
      t.string :remark

      t.timestamps
    end
  end
end
