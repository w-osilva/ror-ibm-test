FactoryGirl.define do
  factory :contact do
    id { generate(:id) }
    phone_1 Faker::PhoneNumber.phone_number
    phone_2 Faker::PhoneNumber.cell_phone
    email Faker::Internet.email
    web Faker::Internet.url
  end
end
