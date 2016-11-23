require 'rails_helper'

RSpec.describe Person, type: :model do
  
  DatabaseCleaner.clean_with(:deletion)
  
  describe "validations" do
    
    context "data imported from csv file" do
      
      subject(:person) { FactoryGirl.build(:person) }
      
      it "field first_name can not be null" do
        person.first_name = nil
        expect(person.save).to be false
      end

      it "field last_name can not be null" do
        person.last_name = nil
        expect(person.save).to be false
      end
      
      it "must have a relationship with Company" do
        person.company = nil
        expect(person.save).to be false
      end

      it "must have a relationship with Address" do
        person.address = nil
        expect(person.save).to be false
      end

      it "must have a relationship with Contact" do
        person.contact = nil
        expect(person.save).to be false
      end
    
    end
  
  end
  
  describe "relationship" do
  
    subject(:person) { FactoryGirl.build(:person) }
    
    it "must belong to the Company" do
      expect(person.company).to be_an_instance_of(Company)
    end

    it "must belong to the Address" do
      expect(person.address).to be_an_instance_of(Address)
    end

    it "must belong to the Contact" do
      expect(person.contact).to be_an_instance_of(Contact)
    end
  
  end
  
end
