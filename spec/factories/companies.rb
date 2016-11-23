FactoryGirl.define do
  factory :company do
    id { generate(:id) }
    name Faker::Company.name
  end
end
