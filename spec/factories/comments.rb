FactoryGirl.define do
  factory :comment do
    user_id 1
    book_id 1
    message "MyText"
  end
end
