class CreatePaymentDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :payment_destinations do |t|
      t.string :payment_destination_name
      t.string :institution
      t.string :account_number

      t.timestamps
    end
  end
end
