FactoryGirl.define do
  factory :comment do
    user
    book
    message {Faker::Lorem.characters(20)}
  end
end
