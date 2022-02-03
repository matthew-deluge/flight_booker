# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all

Airport.create!([{
  name: "JFK Airport",
  code: "JFK"
},
{
  name: "Laguardia Airport",
  code: "LGA"
}

])

p "Created #{Airport.count} Airports."

Flight.destroy_all

Flight.create!([{
  number: 421,
  company: "TWA",
  flight_duration: 60,
  start_time: DateTime.current.end_of_day,
  arrival_airport_id: Airport.first.id,
  departure_airport_id: Airport.last.id
},
{
  number: 345,
  company: "Pan Am",
  flight_duration: 300,
  start_time: DateTime.current.end_of_day,
  arrival_airport_id: Airport.last.id,
  departure_airport_id: Airport.first.id
}])

p "Created #{Flight.count} Flights."
#t.integer :number
#t.string :company
#t.integer :flight_duration
#t.datetime :start_time
#t.integer :arrival_airport_id
#t.integer :departure_airport_id