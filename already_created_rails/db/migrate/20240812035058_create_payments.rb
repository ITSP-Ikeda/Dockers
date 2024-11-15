class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.integer :payment_destination
      t.integer :year
      t.integer :month
      t.integer :amount

      t.timestamps
    end
  end
end
