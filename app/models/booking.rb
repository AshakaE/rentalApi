class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates_presence_of :name, :date, :created_by, :duration
  # :car_name = Car.find(u.car_id)
end
