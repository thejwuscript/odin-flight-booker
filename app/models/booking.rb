class Booking < ApplicationRecord
  belongs_to :flight
  has_many :travellers, through: :bookings_travellers
  has_many :bookings_travellers
end
