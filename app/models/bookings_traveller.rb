class BookingsTraveller < ApplicationRecord
  belongs_to :booking
  belongs_to :traveller
end
