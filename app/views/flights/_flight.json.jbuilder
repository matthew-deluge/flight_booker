json.extract! flight, :id, :number, :company, :flight_duration, :start_time, :arrival_airport_id, :departure_airport_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
