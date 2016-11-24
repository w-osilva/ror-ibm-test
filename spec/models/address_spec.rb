require 'rails_helper'

RSpec.describe Address, type: :model do
  
  describe "validations" do
    
    context "data imported from csv file" do
      
      subject(:address) { FactoryGirl.build(:address) }
      
      it "field address can not be null" do
        address.address = nil
        expect(address.save).to be false
      end

      it "field county can not be null" do
        address.county = nil
        expect(address.save).to be false
      end

      it "field zip can not be null" do
        address.zip = nil
        expect(address.save).to be false
      end


      it "must have a relationship with City" do
        address.city = nil
        expect(address.save).to be false
      end
      
      it "must have a relationship with State" do
        address.state = nil
        expect(address.save).to be false
      end
    
    end
  
  end
  
  describe "relationship" do
  
    subject(:address) { FactoryGirl.build(:address) }
    
    it "must belong to the City" do
      expect(address.city).to be_an_instance_of(City)
    end

    it "must belong to the State" do
      expect(address.state).to be_an_instance_of(State)
    end
  
  end
  
end
