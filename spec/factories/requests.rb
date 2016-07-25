FactoryGirl.define do
  factory :request do
    user
    book
    status {Faker::Number.between(0, 3)}
  end
end
