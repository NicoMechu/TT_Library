FactoryGirl.define do
  factory :book do
    author
    description {Faker::Lorem.characters(20)}
    title {Faker::Name.name}
    ISBN {Faker::Code.isbn}
    year {Faker::Number.between(1, Time.now.year)}
  end
end