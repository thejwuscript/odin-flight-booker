class Airport < ApplicationRecord
  validates :code, format: { with: /\A[A-Z]{3}\z/ }, presence: true
  validates :name, presence: true

  has_many :departing_flights, foreign_key: :departure_airport_id, class_name: 'Flight'
  has_many :arriving_flights, foreign_key: :arrival_airport_id, class_name: 'Flight'
end
