FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    password { 'foobar' }
  end
end
