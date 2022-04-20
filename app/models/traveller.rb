class Traveller < ApplicationRecord
  has_many :bookings, through: :bookings_travellers
  has_many :bookings_travellers
end
