FactoryBot.define do
  factory :cars do
    name { Faker::Vehicle.make }
    model { Faker::Lorem.sentence(word_count: 3) }
    year { Faker::Number.number(digits: 4) }
    image_url { Faker::Lorem.sentence(word_count: 3) }
  end
end
