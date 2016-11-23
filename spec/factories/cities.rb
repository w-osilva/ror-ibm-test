FactoryGirl.define do
  factory :city do
    id { generate(:id) }
    name Faker::Address.state
    state { FactoryGirl.create(:state) }
  end
end
