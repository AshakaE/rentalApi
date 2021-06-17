class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates_presence_of :name, :model, :year, :imageUrl
end
