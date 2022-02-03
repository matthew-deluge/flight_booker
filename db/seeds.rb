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