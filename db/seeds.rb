# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 20.times do
#   car = Car.create(name: Faker::Vehicle.make, grade: Faker::Number.between(from: 1, to: 5))
# end
5.times do
  booking = Booking.create(name: Faker::Lorem.sentence(word_count: 3), date: Faker::Date.between(from: 2.days.ago, to: 2.days.from_now), created_by: User.first.name, price: Faker::Number.number(digits: 3), duration: Faker::Number.between(from: 1, to: 24), car: Car.all.sample, user: User.all.sample
  )
end

# admin = User.create(name: 'Ashaka', password: 'Admin95', password_digest: 'Admin95', admin: true)