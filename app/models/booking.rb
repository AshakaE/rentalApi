class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates_presence_of :name, :date, :created_by, :price, :duration
end
