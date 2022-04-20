class CreateBookingsTravellers < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings_travellers do |t|
      t.references :booking, foreign_key: true
      t.references :traveller, foreign_key: true

      t.timestamps
    end
  end
end
