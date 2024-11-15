json.extract! payment_destination, :id, :payment_destination_name, :institution, :account_number, :created_at, :updated_at
json.url payment_destination_url(payment_destination, format: :json)
