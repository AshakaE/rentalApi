class Booking < ApplicationRecord
  belongs_to :car, optional: true
  belongs_to :user, optional: true
  validates :name, presence: true, length: { maximum: 120 }
  validates_presence_of :name, :date, :price, :createdBy, :duration
end
