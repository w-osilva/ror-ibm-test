require 'rails_helper'

RSpec.describe Contact, type: :model do
  
  DatabaseCleaner.clean_with(:deletion)
  
  describe "validations" do
    
    context "data imported from csv file" do
      
      subject(:contact) { FactoryGirl.build(:contact) }

      it "field phone_1 may be null" do
        contact.phone_1 = nil
        expect(contact.save).to be true
      end
      
      it "field phone_2 may be null" do
        contact.phone_2 = nil
        expect(contact.save).to be true
      end
      
      it "field email may be null" do
        contact.email = nil
        expect(contact.save).to be true
      end
      
      it "field email must have a valid format" do
        contact.email = 'foo_test.com'
        expect(contact.save).to be false
      end

      it "field web may be null" do
        contact.web = nil
        expect(contact.save).to be true
      end

      it "field web must have a valid format" do
        contact.web = 'foo_test.com'
        expect(contact.save).to be false
      end

    end
  
  end
  
end
