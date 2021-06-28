class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy, foreign_key: :carId
  has_many :users, through: :bookings, foreign_key: :userId

  validates_presence_of :name, :model, :year, :imageUrl
end
