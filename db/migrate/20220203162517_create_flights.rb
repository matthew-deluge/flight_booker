class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.int :number
      t.string :company
      t.duration :flight_duration
      t.datetime :start_time
      t.int :arrival_airport_id
      t.int :departure_airport_id

      t.timestamps
    end
  end
end
