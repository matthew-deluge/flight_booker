class AddPassengerNumberToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :passenger_number, :integer
  end
end
