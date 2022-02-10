class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :number
      t.string :company
      t.integer :flight_duration
      t.datetime :start_time
      t.integer :arrival_airport_id
      t.integer :departure_airport_id

      t.timestamps
    end
  end
end