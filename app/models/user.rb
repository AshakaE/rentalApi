class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 8 }

  has_secure_password

  has_many :bookings, foreign_key: :created_by
  has_many :cars, through: :bookings 

  validates_presence_of :name, :email, :password_digest
end