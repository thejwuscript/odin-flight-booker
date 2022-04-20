class Booking < ApplicationRecord
  belongs_to :flight
  has_many :bookings_travellers
  has_many :travellers, through: :bookings_travellers
  

  accepts_nested_attributes_for :travellers
end
