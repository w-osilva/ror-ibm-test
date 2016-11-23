FactoryGirl.define do
  factory :address do
    id { generate(:id) }
    address Faker::Address.street_address
    county Faker::Name.name
    zip Faker::Address.zip
    city { FactoryGirl.create(:city) }
    state { FactoryGirl.create(:state) }
  end
end
