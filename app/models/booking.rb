class Booking < ApplicationRecord
  belongs_to :car, foreign_key: :carId
  belongs_to :user, foreign_key: :userId
  validates :name, presence: true, length: { maximum: 120 }
  validates_presence_of :name, :date, :price, :createdBy, :duration

  def self.booked(value)
    where(id: "#{ value }%")
  end
end
