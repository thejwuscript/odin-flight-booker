class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'

  has_many :bookings

  def self.searched_flights(hash)
    date = Date.parse("#{hash[:day]} #{hash[:month]} #{hash[:year]}")
    matched_airport_flights = Flight.where(departure_airport_id: hash[:departure_airport_id], arrival_airport_id: hash[:arrival_airport_id])
    matched_airport_flights.select { |flight| flight.time.to_date == date }
  end
end
