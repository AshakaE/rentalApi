FactoryBot.define do
  factory :bookings do
    name { Faker::Lorem.sentence(word_count: 3)  }
    date  { Faker::Date.between(from: 5.days.ago, to: Date.today) }
    duration { Faker::Number.number(from: 1, to: 24) }
    price { Faker::Number.number(digits: 3) }
    created_by { Faker::Name.first_name  }
  end
end