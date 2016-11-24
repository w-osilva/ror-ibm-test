FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    pwd = Faker::Internet.password(8)
    password pwd
    password_confirmation pwd
  end
end
