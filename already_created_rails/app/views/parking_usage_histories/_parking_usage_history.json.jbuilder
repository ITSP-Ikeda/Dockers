json.extract! parking_usage_history, :id, :year, :month, :parking_area_id, :amount, :created_at, :updated_at
json.url parking_usage_history_url(parking_usage_history, format: :json)
