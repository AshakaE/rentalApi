FactoryBot.define do
  factory :cars do
    name { Faker::Vehicle.make }
    grade { Faker::Number.number(3) }
  end
end