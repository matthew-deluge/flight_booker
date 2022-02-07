class DeletePassengeridFromBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :passenger_id
  end
end
