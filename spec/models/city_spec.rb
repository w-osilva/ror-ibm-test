require 'rails_helper'

RSpec.describe City, type: :model do
  
  DatabaseCleaner.clean_with(:deletion)

  describe "validations" do
  
    context "data imported from csv file" do
    
      subject(:city) { FactoryGirl.build(:city) }
    
      it "field name can not be null" do
        city.name = nil
        expect(city.save).to be false
      end

      it "must have a relationship with State" do
        city.state = nil
        expect(city.save).to be false
      end
  
    end

  end
end
