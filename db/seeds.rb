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

20.times do
  nodes = Airport.all.sample(2)
  p nodes
  Flight.create!([{
    number: Faker::Number.number(digits: 3),
    company: COMPANIES.sample,
    flight_duration: Faker::Number.between(from: 30, to: 600),
    start_time: Faker::Date.between(from: '2022-03-01', to: '2022-12-31'),
    arrival_airport_id: nodes[1].id,
    departure_airport_id: nodes[0].id
  }])

  end 

p "Created #{Flight.count} Flights."
#t.integer :number
#t.string :company
#t.integer :flight_duration
#t.datetime :start_time
#t.integer :arrival_airport_id
#t.integer :departure_airport_id