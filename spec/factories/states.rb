FactoryGirl.define do
  factory :state do
    id { generate(:id) }
    name Faker::Address.state
    abbreviation Faker::Address.state_abbr
  end
end
