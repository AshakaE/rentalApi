class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :name, presence: true, length: { maximum: 120 }
  validates_presence_of :name, :date, :price, :createdBy, :duration
end
