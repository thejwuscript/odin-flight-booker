class Airport < ApplicationRecord
  validates :code, format: { with: /^[A-Z]{3}$/ }, presence: true
  validates :name, presence: true
end
