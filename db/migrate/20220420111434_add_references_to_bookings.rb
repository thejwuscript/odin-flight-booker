class AddReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :traveller, foreign_key: true
  end
end
