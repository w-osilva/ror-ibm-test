FactoryGirl.define do
  factory :person do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    address { FactoryGirl.create(:address) }
    company { FactoryGirl.create(:company) }
    contact { FactoryGirl.create(:contact) }
  end
end
