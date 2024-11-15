json.extract! payment, :id, :payment_destination, :year, :month, :amount, :created_at, :updated_at
json.url payment_url(payment, format: :json)
