class Flight < ApplicationRecord
 belongs_to :arrival_airport, class_name: "Airport"
 belongs_to :departure_airport, class_name: "Airport"
 has_many :bookings

 def self.search(search)
  if search
    flights = Flight.where(departure_airport_id: search[0], arrival_airport_id: search[1])
    date_flights = flights.select { |f| f.start_time.to_date === search[2] }
    return date_flights
  else
    Flight.all
  end
 end

 def flight_info
  "#{company} Flight #{number} from #{departure_airport.name} to #{arrival_airport.name}, leaves #{start_time.to_formatted_s(:long)}."
 end

end
