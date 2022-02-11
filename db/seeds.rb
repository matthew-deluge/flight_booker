# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
COMPANIES = ['TWA', 'Pan Am', 'Day Jet', 'Direct Air']
Airport.destroy_all

Airport.create!([{
  name: "JFK Airport",
  code: "JFK"
},
{
  name: "Laguardia Airport",
  code: "LGA"
},
{
  name: "Los Angeles Airport",
  code: "LAX"
},
{
  name: "Logan Airport",
  code: "BOS"
},
{
  name: "Miami-Dade Airport",
  code: "MIA"
}
])

p "Created #{Airport.count} Airports."

Flight.destroy_all

Airport.all.each do |departure|
  Airport.all.each do |arrival|
    date = DateTime.now()
    365.times do
      Flight.create!([{
        number: Faker::Number.number(digits: 3),
        company: COMPANIES.sample,
        flight_duration: Faker::Number.between(from: 30, to: 600),
        start_time: date,
        arrival_airport_id: arrival.id,
        departure_airport_id: departure.id
      }])
      date = date.next_day
    end
  end
end 

p "Created #{Flight.count} Flights."

Booking.destroy_all
Passenger.destroy_all
#t.integer :number
#t.string :company
#t.integer :flight_duration
#t.datetime :start_time
#t.integer :arrival_airport_id
#t.integer :departure_airport_id