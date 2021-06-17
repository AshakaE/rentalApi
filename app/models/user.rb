class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password

  has_many :bookings, foreign_key: :createdBy
  has_many :cars, through: :bookings 

  validates_presence_of :name, :password_digest
end